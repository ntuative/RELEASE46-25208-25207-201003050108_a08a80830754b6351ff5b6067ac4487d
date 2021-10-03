package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_561:String;
      
      private var var_2281:String;
      
      private var var_2283:int;
      
      private var var_2280:int;
      
      private var var_1318:String;
      
      private var var_1285:String;
      
      private var _name:String;
      
      private var var_440:int;
      
      private var var_757:int;
      
      private var var_2279:int;
      
      private var var_1963:int;
      
      private var var_2282:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2280;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1285;
      }
      
      public function get customData() : String
      {
         return this.var_2281;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_440;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2283;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2282;
      }
      
      public function get figure() : String
      {
         return this.var_561;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1963;
      }
      
      public function get sex() : String
      {
         return this.var_1318;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_561 = param1.readString();
         this.var_1318 = param1.readString();
         this.var_2281 = param1.readString();
         this.var_1285 = param1.readString();
         this.var_2279 = param1.readInteger();
         this.var_2282 = param1.readString();
         this.var_2283 = param1.readInteger();
         this.var_2280 = param1.readInteger();
         this.var_1963 = param1.readInteger();
         this.var_757 = param1.readInteger();
         this.var_440 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2279;
      }
      
      public function get respectLeft() : int
      {
         return this.var_757;
      }
   }
}
