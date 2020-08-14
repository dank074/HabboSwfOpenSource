﻿package com.sulake.habbo.communication.messages.incoming.catalog
{
    import com.sulake.core.communication.messages.MessageEvent;
    import com.sulake.core.communication.messages.IMessageEvent;
    import com.sulake.habbo.communication.messages.parser.catalog.ProductOfferMessageParser;

    public class _Str_9560 extends MessageEvent implements IMessageEvent 
    {
        public function _Str_9560(k:Function)
        {
            super(k, ProductOfferMessageParser);
        }

        public function getParser():ProductOfferMessageParser
        {
            return this._parser as ProductOfferMessageParser;
        }
    }
}
