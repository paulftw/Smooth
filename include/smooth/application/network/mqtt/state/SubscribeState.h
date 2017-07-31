//
// Created by permal on 7/30/17.
//

#pragma once

#include "ConnectedState.h"

namespace smooth
{
    namespace application
    {
        namespace network
        {
            namespace mqtt
            {
                namespace state
                {
                    class SubscribeState
                            : public ConnectedState
                    {
                        public:
                            SubscribeState(MqttFSM<MQTTBaseState>& fsm)
                                    : ConnectedState(fsm, "SubscribeState")
                            {
                            }


                    };
                }
            }
        }
    }
}
