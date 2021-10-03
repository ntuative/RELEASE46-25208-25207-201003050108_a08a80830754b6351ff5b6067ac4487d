package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2102:int;
      
      private var var_2100:int;
      
      private var var_2098:int;
      
      private var _userName:String;
      
      private var var_2099:int;
      
      private var var_2101:int;
      
      private var var_2097:int;
      
      private var _userId:int;
      
      private var var_634:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2101 = param1.readInteger();
         var_2099 = param1.readInteger();
         var_634 = param1.readBoolean();
         var_2098 = param1.readInteger();
         var_2100 = param1.readInteger();
         var_2102 = param1.readInteger();
         var_2097 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2097;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_634;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2099;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2100;
      }
      
      public function get cautionCount() : int
      {
         return var_2102;
      }
      
      public function get cfhCount() : int
      {
         return var_2098;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2101;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
