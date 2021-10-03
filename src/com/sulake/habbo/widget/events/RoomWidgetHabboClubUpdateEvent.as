package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_212:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2178:Boolean = false;
      
      private var var_2176:int = 0;
      
      private var var_2177:int = 0;
      
      private var var_2175:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_212,param5,param6);
         var_2175 = param1;
         var_2177 = param2;
         var_2176 = param3;
         var_2178 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_2176;
      }
      
      public function get periodsLeft() : int
      {
         return var_2177;
      }
      
      public function get daysLeft() : int
      {
         return var_2175;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2178;
      }
   }
}
