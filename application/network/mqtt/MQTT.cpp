//
// Created by permal on 7/20/17.
//

#include <smooth/application/network/mqtt/MQTT.h>
#include <smooth/application/network/mqtt/packet/Connect.h>
#include <smooth/application/network/mqtt/state/IdleState.h>
#include "esp_log.h"


using namespace smooth::core::ipc;
using namespace std::chrono;

namespace smooth
{
    namespace application
    {
        namespace network
        {
            namespace mqtt
            {
                MQTT::MQTT(const std::string& mqtt_client_id, uint32_t stack_depth, UBaseType_t priority)
                        : Task(mqtt_client_id, stack_depth, priority, std::chrono::milliseconds(100)),
                          tx_buffer(),
                          rx_buffer(),
                          tx_empty("TX_empty", 5, *this, *this),
                          data_available("data_available", 5, *this, *this),
                          connection_status("connection_status", 5, *this, *this),
                          timer_events("timer_events", 5, *this, *this),
                          guard(),
                          client_id(mqtt_client_id),
                          mqtt_socket(nullptr),
                          receive_timer("receive_timer", MQTT_FSM_RECEIVE_TIMER_ID, timer_events, false,
                                        std::chrono::seconds(10)),
                          reconnect_timer("reconnect_timer", MQTT_FSM_RECONNECT_TIMER_ID, timer_events, false,
                                          std::chrono::seconds(5)),
                          fsm(*this)
                {
                }

                void MQTT::tick()
                {
                    fsm.tick();
                }


                void MQTT::init()
                {
                    fsm.set_state(new(fsm) state::IdleState(fsm));
                }

                void MQTT::connect_to(std::shared_ptr<smooth::core::network::InetAddress> address, bool auto_reconnect,
                                      bool use_ssl)
                {
                    Mutex::Lock lock(guard);

                    this->auto_reconnect = auto_reconnect;

                    if (!mqtt_socket)
                    {
                        if (use_ssl)
                        {
                            mqtt_socket.reset(
                                    new core::network::SSLSocket<packet::MQTTPacket>(tx_buffer,
                                                                                     rx_buffer,
                                                                                     tx_empty,
                                                                                     data_available,
                                                                                     connection_status));
                        }
                        else
                        {
                            mqtt_socket.reset(
                                    new core::network::Socket<packet::MQTTPacket>(tx_buffer,
                                                                                  rx_buffer,
                                                                                  tx_empty,
                                                                                  data_available,
                                                                                  connection_status));
                        }

                        mqtt_socket->start(address);
                    }
                }

                void MQTT::disconnect()
                {
                    auto_reconnect = false;
                    mqtt_socket->stop();
                    mqtt_socket.reset();
                    fsm.set_state(new(fsm) state::IdleState(fsm));
                }

                void MQTT::send_packet(packet::MQTTPacket& packet, milliseconds timeout)
                {
                    receive_timer.start(timeout);
                    tx_buffer.put(packet);
                }

                const std::string& MQTT::get_client_id() const
                {
                    return client_id;
                }

                void MQTT::message(const core::network::TransmitBufferEmptyEvent& msg)
                {
                    fsm.message(msg);
                }

                void MQTT::message(const core::network::ConnectionStatusEvent& msg)
                {
                    fsm.message(msg);
                }

                void MQTT::message(const core::network::DataAvailableEvent<packet::MQTTPacket>& msg)
                {
                    receive_timer.stop();

                    packet::MQTTPacket p;
                    if (msg.get(p))
                    {
                        fsm.packet_received(p);
                    }
                }

                void MQTT::message(const core::timer::TimerExpiredEvent& msg)
                {
                    fsm.message(msg);
                }
            }
        }
    }
}