﻿package com.sulake.habbo.communication.messages.parser.sound
{
    import com.sulake.core.communication.messages.IMessageParser;
    import com.sulake.core.communication.messages.IMessageDataWrapper;

    public class NowPlayingMessageParser implements IMessageParser
    {
        private var _currentSongId:int;
        private var _currentPosition:int;
        private var _nextSongId:int;
        private var _nextPosition:int;
        private var _syncCount:int;


        public function get currentSongId():int
        {
            return this._currentSongId;
        }

        public function get _Str_21591():int
        {
            return this._currentPosition;
        }

        public function get _Str_17943():int
        {
            return this._nextSongId;
        }

        public function get _Str_26352():int
        {
            return this._nextPosition;
        }

        public function get _Str_19692():int
        {
            return this._syncCount;
        }

        public function flush():Boolean
        {
            this._currentSongId = -1;
            this._currentPosition = -1;
            this._nextSongId = -1;
            this._nextPosition = -1;
            this._syncCount = -1;
            return true;
        }

        public function parse(k:IMessageDataWrapper):Boolean
        {
            this._currentSongId = k.readInteger();
            this._currentPosition = k.readInteger();
            this._nextSongId = k.readInteger();
            this._nextPosition = k.readInteger();
            this._syncCount = k.readInteger();
            return true;
        }
    }
}
