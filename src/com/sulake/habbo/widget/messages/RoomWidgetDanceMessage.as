package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_580:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_869:int = 0;
      
      public static const const_1228:Array = [2,3,4];
       
      
      private var var_81:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_580);
         var_81 = param1;
      }
      
      public function get style() : int
      {
         return var_81;
      }
   }
}
