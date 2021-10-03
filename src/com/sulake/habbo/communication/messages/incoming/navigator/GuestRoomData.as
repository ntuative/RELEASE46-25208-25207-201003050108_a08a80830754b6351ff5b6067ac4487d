package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1686:int;
      
      private var var_1683:String;
      
      private var var_1687:int;
      
      private var var_1684:int;
      
      private var var_670:Boolean;
      
      private var var_1685:Boolean;
      
      private var var_378:int;
      
      private var var_1136:String;
      
      private var var_1690:int;
      
      private var var_1286:int;
      
      private var _ownerName:String;
      
      private var var_671:String;
      
      private var var_1688:int;
      
      private var var_1682:RoomThumbnailData;
      
      private var var_1689:Boolean;
      
      private var var_616:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_616 = new Array();
         super();
         var_378 = param1.readInteger();
         var_670 = param1.readBoolean();
         var_671 = param1.readString();
         _ownerName = param1.readString();
         var_1690 = param1.readInteger();
         var_1686 = param1.readInteger();
         var_1688 = param1.readInteger();
         var_1136 = param1.readString();
         var_1687 = param1.readInteger();
         var_1689 = param1.readBoolean();
         var_1684 = param1.readInteger();
         var_1286 = param1.readInteger();
         var_1683 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_616.push(_loc4_);
            _loc3_++;
         }
         var_1682 = new RoomThumbnailData(param1);
         var_1685 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1688;
      }
      
      public function get roomName() : String
      {
         return var_671;
      }
      
      public function get userCount() : int
      {
         return var_1686;
      }
      
      public function get score() : int
      {
         return var_1684;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1683;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1689;
      }
      
      public function get tags() : Array
      {
         return var_616;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1685;
      }
      
      public function get event() : Boolean
      {
         return var_670;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_616 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1286;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1687;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1682;
      }
      
      public function get doorMode() : int
      {
         return var_1690;
      }
      
      public function get flatId() : int
      {
         return var_378;
      }
      
      public function get description() : String
      {
         return var_1136;
      }
   }
}
