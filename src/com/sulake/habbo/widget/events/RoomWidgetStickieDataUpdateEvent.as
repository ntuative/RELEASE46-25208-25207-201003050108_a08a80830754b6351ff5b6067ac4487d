package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_555:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_187:String;
      
      private var var_628:String;
      
      private var var_1387:String;
      
      private var var_145:int = -1;
      
      private var var_10:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_145 = param2;
         var_1387 = param3;
         var_187 = param4;
         var_628 = param5;
         var_10 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1387;
      }
      
      public function get colorHex() : String
      {
         return var_628;
      }
      
      public function get text() : String
      {
         return var_187;
      }
      
      public function get objectId() : int
      {
         return var_145;
      }
      
      public function get controller() : Boolean
      {
         return var_10;
      }
   }
}
