package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1829:String;
      
      private var var_561:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_561 = param1;
         var_1829 = param2;
      }
      
      public function get race() : String
      {
         return var_1829;
      }
      
      public function get figure() : String
      {
         return var_561;
      }
   }
}
