set(SMOOTH_LIB_ROOT ${CMAKE_CURRENT_LIST_DIR})

set(SMOOTH_SOURCES
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/HTTPServerClient.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/regular/HTTPPacket.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/URLEncoding.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/http_utils.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/HTTPProtocol.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/regular/RegularHTTPProtocol.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/regular/MIMEParser.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/regular/HTTPHeaderDef.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/regular/responses/ErrorResponse.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/regular/responses/FileContentResponse.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/regular/responses/StringResponse.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/regular/responses/HeaderOnlyResponse.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/regular/TemplateProcessor.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/websocket/responses/WSResponse.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/websocket/WebsocketProtocol.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/http/websocket/WebSocketServer.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/ConnAck.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/Connect.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/Disconnect.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/MQTTPacket.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/MQTTProtocol.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/MQTTProtocolDefinitions.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/PacketDecoder.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/PacketIdentifierFactory.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/PingReq.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/PingResp.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/PubAck.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/PubComp.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/Publish.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/PubRec.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/PubRel.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/SubAck.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/Subscribe.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/UnsubAck.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/packet/Unsubscribe.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/state/ConnectedState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/state/ConnectToBrokerState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/state/DisconnectedState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/state/DisconnectState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/state/MQTTBaseState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/state/RunState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/MqttClient.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/Publication.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/network/mqtt/Subscription.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/hash/sha.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/application/hash/base64.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/ipc/QueueNotification.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/filesystem/filesystem.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/filesystem/File.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/filesystem/FSLock.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/filesystem/Path.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/network/IPv4.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/network/IPv6.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/network/MbedTLSContext.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/network/SocketDispatcher.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/network/CommonSocket.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/timer/ElapsedTime.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/timer/Timer.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/timer/TimerService.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/util/string_util.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/Application.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/json/Value.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/json/JsonFile.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/Task.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/core/SystemStatistics.cpp
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/io/i2c/ADS1115.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/io/i2c/MCP23017.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/HTTPServerClient.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/HTTPServer.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/HTTPProtocol.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/URLEncoding.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/http_utils.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/IResponseOperation.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/regular/RegularHTTPProtocol.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/regular/TemplateProcessor.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/regular/ITemplateDataRetriever.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/regular/responses/ErrorResponse.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/regular/responses/FileContentResponse.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/regular/responses/StringResponse.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/websocket/WebsocketProtocol.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/http/websocket/WebsocketServer.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/event/BaseEvent.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/event/ConnectEvent.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/event/DisconnectEvent.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/ConnAck.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/Connect.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/Disconnect.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/IPacketReceiver.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/MQTTProtocol.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/PacketDecoder.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/PacketIdentifierFactory.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/PingReq.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/PingResp.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/PubAck.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/PubComp.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/Publish.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/PubRec.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/PubRel.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/SubAck.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/Subscribe.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/UnsubAck.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/Unsubscribe.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/packet/MQTTPacket.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/state/ConnectedState.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/state/ConnectToBrokerState.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/state/DisconnectedState.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/state/DisconnectState.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/state/IdleState.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/state/MQTTBaseState.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/state/MqttFSM.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/state/MqttFsmConstants.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/state/RunState.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/state/StartupState.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/IMqttClient.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/InFlight.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/Logging.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/MqttClient.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/MQTTProtocolDefinitions.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/Publication.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/network/mqtt/Subscription.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/SystemStatistics.h
        ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/filesystem/Path.h
        #$ENV{IDF_PATH}/components/json/cJSON/cJSON.c
        #$ENV{IDF_PATH}/components/json/cJSON/cJSON.h
        )

if (${ESP_PLATFORM})
    list(APPEND SMOOTH_SOURCES
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/logging/idf/idf_log.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/network/Wifi.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/network/Wifi.h
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/io/Input.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/io/Output.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/io/InterruptInput.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/io/i2c/I2CCommandLink.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/io/i2c/I2CMasterDevice.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/io/i2c/Master.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/filesystem/SPIFlash.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/filesystem/SDCard.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/filesystem/SPISDCard.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/filesystem/SPIFlash.h
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/filesystem/SDCard.h
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/filesystem/SPISDCard.h
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/sntp/Sntp.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/sntp/Sntp.h
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/filesystem/MMCSDCard.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/filesystem/MMCSDCard.h
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/io/Input.h
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/io/Output.h
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/io/i2c/I2CCommandLink.h
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/io/InterruptInput.h
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/io/i2c/I2CMasterDevice.h
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/core/io/i2c/Master.h
            ${CMAKE_CURRENT_LIST_DIR}/smooth/application/io/i2c/MCP23017.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/application/io/i2c/ADS1115.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/application/io/i2c/MCP23017.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/application/io/i2c/BME280.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/application/io/wiegand/Wiegand.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/application/security/PasswordHash.cpp
            ${CMAKE_CURRENT_LIST_DIR}/smooth/include/smooth/application/security/PasswordHash.h
            )
else()
    list(APPEND SMOOTH_SOURCES
            ${CMAKE_CURRENT_LIST_DIR}/smooth/core/logging/posix/posix_log.cpp
            )
endif()