﻿package com.sulake.habbo.communication.messages.incoming.roomsettings
{
    import com.sulake.core.communication.messages.IMessageDataWrapper;

    public class RoomModerationSettings
    {
        public static const _Str_10707:int = 0;
        public static const _Str_5047:int = 1;
        public static const _Str_11537:int = 2;

        private var _whoCanMute:int;
        private var _whoCanKick:int;
        private var _whoCanBan:int;

        public function RoomModerationSettings(k:IMessageDataWrapper)
        {
            this._whoCanMute = k.readInteger();
            this._whoCanKick = k.readInteger();
            this._whoCanBan = k.readInteger();
        }

        public function get whoCanMute():int
        {
            return this._whoCanMute;
        }

        public function get whoCanKick():int
        {
            return this._whoCanKick;
        }

        public function get whoCanBan():int
        {
            return this._whoCanBan;
        }
    }
}
