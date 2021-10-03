package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2075:String;
      
      private var var_881:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2075 = param1;
         var_881 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2075;
      }
      
      public function get parameter() : String
      {
         return var_881;
      }
   }
}
