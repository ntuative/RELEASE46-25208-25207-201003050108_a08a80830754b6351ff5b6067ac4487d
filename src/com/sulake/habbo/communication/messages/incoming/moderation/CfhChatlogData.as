package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_975:int;
      
      private var var_2214:int;
      
      private var var_1559:int;
      
      private var var_112:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1559 = param1.readInteger();
         var_2214 = param1.readInteger();
         var_975 = param1.readInteger();
         var_112 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1559);
      }
      
      public function get reportedUserId() : int
      {
         return var_975;
      }
      
      public function get callerUserId() : int
      {
         return var_2214;
      }
      
      public function get callId() : int
      {
         return var_1559;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_112;
      }
   }
}
