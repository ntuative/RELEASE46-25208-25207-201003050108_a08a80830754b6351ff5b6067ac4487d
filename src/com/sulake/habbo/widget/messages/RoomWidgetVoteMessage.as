package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_105:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1261:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_105);
         var_1261 = param1;
      }
      
      public function get vote() : int
      {
         return var_1261;
      }
   }
}
