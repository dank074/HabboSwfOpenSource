﻿package com.sulake.habbo.communication.messages.incoming._Str_447
{
    import com.sulake.core.communication.messages.MessageEvent;
    import com.sulake.core.communication.messages.IMessageEvent;
    import com.sulake.habbo.communication.messages.parser._Str_449.TryVerificationCodeResultParser;

    public class _Str_9151 extends MessageEvent implements IMessageEvent 
    {
        public function _Str_9151(k:Function)
        {
            super(k, TryVerificationCodeResultParser);
        }

        public function getParser():TryVerificationCodeResultParser
        {
            return _parser as TryVerificationCodeResultParser;
        }
    }
}
