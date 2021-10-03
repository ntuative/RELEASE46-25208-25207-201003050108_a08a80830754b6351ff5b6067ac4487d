package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2294:Boolean;
      
      private var var_2293:int;
      
      private var var_2291:Boolean;
      
      private var var_1408:String;
      
      private var var_1285:String;
      
      private var var_1593:int;
      
      private var var_1761:String;
      
      private var var_2292:String;
      
      private var var_1762:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1593 = param1.readInteger();
         this.var_1408 = param1.readString();
         this.var_1761 = param1.readString();
         this.var_2294 = param1.readBoolean();
         this.var_2291 = param1.readBoolean();
         param1.readString();
         this.var_2293 = param1.readInteger();
         this.var_1762 = param1.readString();
         this.var_2292 = param1.readString();
         this.var_1285 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1285;
      }
      
      public function get avatarName() : String
      {
         return this.var_1408;
      }
      
      public function get avatarId() : int
      {
         return this.var_1593;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2294;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2292;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1762;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2291;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1761;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2293;
      }
   }
}
