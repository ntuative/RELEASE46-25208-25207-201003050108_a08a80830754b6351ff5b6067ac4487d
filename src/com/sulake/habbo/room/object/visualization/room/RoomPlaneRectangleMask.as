package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1601:Number = 0;
      
      private var var_1600:Number = 0;
      
      private var var_1602:Number = 0;
      
      private var var_1599:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1600 = param1;
         var_1602 = param2;
         var_1601 = param3;
         var_1599 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1600;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1601;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1602;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1599;
      }
   }
}
