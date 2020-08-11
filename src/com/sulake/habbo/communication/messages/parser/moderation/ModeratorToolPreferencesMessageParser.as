﻿package com.sulake.habbo.communication.messages.parser.moderation
{
    import com.sulake.core.communication.messages.IMessageParser;
    import com.sulake.core.communication.messages.IMessageDataWrapper;

    public class ModeratorToolPreferencesMessageParser implements IMessageParser
    {
        private var _windowX:int;
        private var _Str_5029:int;
        private var _Str_4111:int;
        private var _Str_5130:int;


        public function get _Str_17736():int
        {
            return this._windowX;
        }

        public function get _Str_18137():int
        {
            return this._Str_5029;
        }

        public function get _Str_4971():int
        {
            return this._Str_4111;
        }

        public function get _Str_17903():int
        {
            return this._Str_5130;
        }

        public function flush():Boolean
        {
            this._windowX = 0;
            this._Str_5029 = 0;
            this._Str_4111 = 0;
            this._Str_5130 = 0;
            return true;
        }

        public function parse(k:IMessageDataWrapper):Boolean
        {
            this._windowX = k.readInteger();
            this._Str_5029 = k.readInteger();
            this._Str_4111 = k.readInteger();
            this._Str_5130 = k.readInteger();
            return true;
        }
    }
}
