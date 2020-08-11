﻿package com.sulake.habbo.communication.messages.incoming.availability
{
    import com.sulake.core.communication.messages.MessageEvent;
    import com.sulake.core.communication.messages.IMessageEvent;
    import com.sulake.habbo.communication.messages.parser.availability.AvailabilityTimeMessageParser;

    public class _Str_17595 extends MessageEvent implements IMessageEvent 
    {
        public function _Str_17595(k:Function)
        {
            super(k, AvailabilityTimeMessageParser);
        }

        public function getParser():AvailabilityTimeMessageParser
        {
            return _parser as AvailabilityTimeMessageParser;
        }
    }
}
