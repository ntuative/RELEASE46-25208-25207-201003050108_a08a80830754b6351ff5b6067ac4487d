package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_615:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_955:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_615);
         var_955 = param1;
      }
      
      public function get groupId() : int
      {
         return var_955;
      }
   }
}
