package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1393:int;
      
      private var var_1394:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1393;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1393 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1393 = this.var_1393;
         _loc1_.var_1394 = this.var_1394;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1394 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1394;
      }
   }
}
