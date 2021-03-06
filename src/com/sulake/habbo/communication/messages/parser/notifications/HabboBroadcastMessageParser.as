﻿package com.sulake.habbo.communication.messages.parser.notifications
{
    import com.sulake.core.communication.messages.IMessageParser;
    import com.sulake.core.communication.messages.IMessageDataWrapper;

    public class HabboBroadcastMessageParser implements IMessageParser
    {
        private var _messageText:String = "";


        public function flush():Boolean
        {
            return true;
        }

        public function parse(k:IMessageDataWrapper):Boolean
        {
            this._messageText = k.readString();
            return true;
        }

        public function get _Str_3460():String
        {
            return this._messageText;
        }
    }
}
