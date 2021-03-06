﻿package com.sulake.habbo.communication.messages.incoming.help
{
    import com.sulake.core.communication.messages.MessageEvent;
    import com.sulake.core.communication.messages.IMessageEvent;
    import com.sulake.habbo.communication.messages.parser.help.ChatReviewSessionOfferedToGuideMessageParser;

    public class ChatReviewSessionOfferedToGuideMessageEvent extends MessageEvent implements IMessageEvent
    {
        public function ChatReviewSessionOfferedToGuideMessageEvent(k:Function)
        {
            super(k, ChatReviewSessionOfferedToGuideMessageParser);
        }

        public function getParser():ChatReviewSessionOfferedToGuideMessageParser
        {
            return _parser as ChatReviewSessionOfferedToGuideMessageParser;
        }
    }
}
