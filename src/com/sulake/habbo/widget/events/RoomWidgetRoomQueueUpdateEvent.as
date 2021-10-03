package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_354:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_297:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_803:int;
      
      private var var_250:Boolean;
      
      private var var_1990:Boolean;
      
      private var var_1474:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_803 = param2;
         var_1990 = param3;
         var_250 = param4;
         var_1474 = param5;
      }
      
      public function get position() : int
      {
         return var_803;
      }
      
      public function get isActive() : Boolean
      {
         return var_250;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1474;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1990;
      }
   }
}
