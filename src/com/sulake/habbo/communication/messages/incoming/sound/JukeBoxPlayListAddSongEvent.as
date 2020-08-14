﻿package com.sulake.habbo.communication.messages.incoming.sound
{
    import com.sulake.core.communication.messages.MessageEvent;
    import com.sulake.core.communication.messages.IMessageEvent;
    import com.sulake.habbo.communication.messages.parser.sound.PlayListSongAddedMessageParser;

    public class JukeBoxPlayListAddSongEvent extends MessageEvent implements IMessageEvent 
    {
        public function JukeBoxPlayListAddSongEvent(k:Function)
        {
            super(k, PlayListSongAddedMessageParser);
        }

        public function getParser():PlayListSongAddedMessageParser
        {
            return this._parser as PlayListSongAddedMessageParser;
        }
    }
}
