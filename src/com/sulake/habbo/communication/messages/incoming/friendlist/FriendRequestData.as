package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1983:int;
      
      private var var_1984:String;
      
      private var var_977:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_977 = param1.readInteger();
         this.var_1984 = param1.readString();
         this.var_1983 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_977;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_1983;
      }
      
      public function get requesterName() : String
      {
         return this.var_1984;
      }
   }
}
