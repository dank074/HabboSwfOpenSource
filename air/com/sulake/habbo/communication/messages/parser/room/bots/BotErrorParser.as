//com.sulake.habbo.communication.messages.parser.room.bots.BotErrorParser

package com.sulake.habbo.communication.messages.parser.room.bots{
    import com.sulake.core.communication.messages.IMessageParser;
    import com.sulake.core.communication.messages.IMessageDataWrapper;

    [SecureSWF(rename="true")]
    public class BotErrorParser implements IMessageParser {

        private var _errorCode:int;

        public function BotErrorParser();

        public function get errorCode():int;

        public function flush():Boolean;

        public function parse(k:IMessageDataWrapper):Boolean;


    }
}//package com.sulake.habbo.communication.messages.parser.room.bots

