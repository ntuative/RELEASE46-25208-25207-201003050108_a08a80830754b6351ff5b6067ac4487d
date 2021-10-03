package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_691:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_490:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_691);
         var_490 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_490;
      }
   }
}
