﻿package com.sulake.habbo.communication.messages.parser.handshake
{
    import com.sulake.core.communication.messages.IMessageParser;
    import com.sulake.core.communication.messages.IMessageDataWrapper;

    public class InitDiffieHandshakeParser implements IMessageParser 
    {
        private var _encryptedPrime:String;
        private var _Str_22105:String;


        public function flush():Boolean
        {
            return true;
        }

        public function parse(k:IMessageDataWrapper):Boolean
        {
            this._encryptedPrime = k.readString();
            this._Str_22105 = k.readString();
            return true;
        }

        public function get encryptedPrime():String
        {
            return this._encryptedPrime;
        }

        public function get encryptedGenerator():String
        {
            return this._Str_22105;
        }
    }
}
