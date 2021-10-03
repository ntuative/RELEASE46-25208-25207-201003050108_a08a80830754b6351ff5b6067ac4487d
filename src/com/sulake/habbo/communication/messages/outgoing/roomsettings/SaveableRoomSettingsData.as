package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_1789:int;
      
      private var var_1690:int;
      
      private var var_1792:Boolean;
      
      private var var_1791:Boolean;
      
      private var var_1788:Array;
      
      private var var_1685:Boolean;
      
      private var var_1286:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_616:Array;
      
      private var var_1136:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1690;
      }
      
      public function get description() : String
      {
         return var_1136;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1791;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1789;
      }
      
      public function set description(param1:String) : void
      {
         var_1136 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1685 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1789 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1286;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1788;
      }
      
      public function get tags() : Array
      {
         return var_616;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1685;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1690 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1792 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_616 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1788 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1286 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1792;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1791 = param1;
      }
   }
}
