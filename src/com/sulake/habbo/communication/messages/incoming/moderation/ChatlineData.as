package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1528:String;
      
      private var var_1615:int;
      
      private var var_1613:int;
      
      private var var_1616:int;
      
      private var var_1614:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1615 = param1.readInteger();
         var_1616 = param1.readInteger();
         var_1613 = param1.readInteger();
         var_1614 = param1.readString();
         var_1528 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1528;
      }
      
      public function get hour() : int
      {
         return var_1615;
      }
      
      public function get minute() : int
      {
         return var_1616;
      }
      
      public function get chatterName() : String
      {
         return var_1614;
      }
      
      public function get chatterId() : int
      {
         return var_1613;
      }
   }
}
