package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_561:String;
      
      private var var_1288:String;
      
      private var var_1287:String;
      
      private var var_1286:int;
      
      private var var_1110:int;
      
      private var var_1285:String;
      
      private var _name:String;
      
      private var var_1238:Boolean;
      
      private var var_634:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1110 = param1.readInteger();
         this.var_634 = param1.readBoolean();
         this.var_1238 = param1.readBoolean();
         this.var_561 = param1.readString();
         this.var_1286 = param1.readInteger();
         this.var_1287 = param1.readString();
         this.var_1288 = param1.readString();
         this.var_1285 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_1110;
      }
      
      public function get realName() : String
      {
         return var_1285;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1287;
      }
      
      public function get categoryId() : int
      {
         return var_1286;
      }
      
      public function get online() : Boolean
      {
         return var_634;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1238;
      }
      
      public function get lastAccess() : String
      {
         return var_1288;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_561;
      }
   }
}
