package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_690:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1645:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_690);
         var_1645 = param1;
      }
      
      public function get tag() : String
      {
         return var_1645;
      }
   }
}
