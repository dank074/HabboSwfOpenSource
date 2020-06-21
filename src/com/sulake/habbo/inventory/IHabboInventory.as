﻿package com.sulake.habbo.inventory
{
    import com.sulake.core.runtime.IUnknown;
    import flash.events.IEventDispatcher;
    import com.sulake.habbo.inventory.items.IFurnitureItem;

    public interface IHabboInventory extends IUnknown 
    {
        function get events():IEventDispatcher;
        function get clubDays():int;
        function get clubPeriods():int;
        function get clubPastPeriods():int;
        function get clubLevel():int;
        function get clubHasEverBeenMember():Boolean;
        function get clubIsExpiring():Boolean;
        function get citizenshipVipIsExpiring():Boolean;
        function get clubMinutesUntilExpiration():int;
        function get tradingActive():Boolean;
        function get hasRoomSession():Boolean;
        function get _Str_3455():IUnseenItemTracker;
        function getAllMyBadgeIds(_arg_1:Array):Array;
        function getActivatedAvatarEffects():Array;
        function getAvatarEffects():Array;
        function requestSelectedFurniToMover(_arg_1:IFurnitureItem):Boolean;
        function getFloorItemById(_arg_1:int):IFurnitureItem;
        function getWallItemById(_arg_1:int):IFurnitureItem;
        function placePetToRoom(_arg_1:int, _arg_2:Boolean=false):Boolean;
        function setEffectSelected(_arg_1:int):void;
        function getLastActivatedEffect():int;
        function setEffectDeselected(_arg_1:int):void;
        function deselectAllEffects(_arg_1:Boolean=false):void;
        function _Str_22856(_arg_1:int):IAvatarEffect;
        function _Str_20389(_arg_1:int, _arg_2:String):void;
        function _Str_4511(_arg_1:String, _arg_2:String=null, _arg_3:Boolean=false):void;
        function _Str_16351(_arg_1:String):void;
        function _Str_20251(_arg_1:Boolean):void;
        function _Str_15313():int;
        function returnInventoryFurniFromRecycler(_arg_1:int):Boolean;
        function getItemWithStripId(_arg_1:int):Boolean;
        function _Str_21312(_arg_1:int):Boolean;
        function _Str_14439(_arg_1:int):Boolean;
        function hasBoundFigureSetFurniture(_arg_1:String):Boolean;
        function _Str_11401(_arg_1:String):Boolean;
        function getNonRentedInventoryIds(_arg_1:String, _arg_2:int):Array;
    }
}
