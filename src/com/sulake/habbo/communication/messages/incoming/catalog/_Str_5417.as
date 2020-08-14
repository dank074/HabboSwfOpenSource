﻿package com.sulake.habbo.communication.messages.incoming.catalog
{
    import com.sulake.core.communication.messages.MessageEvent;
    import com.sulake.core.communication.messages.IMessageEvent;
    import com.sulake.habbo.communication.messages.parser.catalog.BuildersClubSubscriptionStatusMessageParser;

    public class _Str_5417 extends MessageEvent implements IMessageEvent 
    {
        public function _Str_5417(k:Function)
        {
            super(k, BuildersClubSubscriptionStatusMessageParser);
        }

        public function getParser():BuildersClubSubscriptionStatusMessageParser
        {
            return this._parser as BuildersClubSubscriptionStatusMessageParser;
        }
    }
}
