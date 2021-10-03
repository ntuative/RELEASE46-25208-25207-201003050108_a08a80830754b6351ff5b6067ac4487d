package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1258:String = "F";
      
      public static const const_964:String = "M";
       
      
      private var var_85:Number = 0;
      
      private var var_561:String = "";
      
      private var var_1960:int = 0;
      
      private var var_1607:String = "";
      
      private var var_1610:int = 0;
      
      private var var_1609:int = 0;
      
      private var var_1608:String = "";
      
      private var var_1318:String = "";
      
      private var _id:int = 0;
      
      private var var_196:Boolean = false;
      
      private var var_222:int = 0;
      
      private var var_1959:String = "";
      
      private var _name:String = "";
      
      private var var_1606:int = 0;
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_222;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_196)
         {
            var_222 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_196)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1960;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_196)
         {
            var_1610 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1959;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_196)
         {
            var_1608 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_196)
         {
            var_1959 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_196)
         {
            var_1609 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_196)
         {
            var_561 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_196)
         {
            var_1960 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_196)
         {
            var_1318 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1610;
      }
      
      public function get groupID() : String
      {
         return var_1608;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_196)
         {
            var_1606 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_196)
         {
            var_1607 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_196 = true;
      }
      
      public function get sex() : String
      {
         return var_1318;
      }
      
      public function get figure() : String
      {
         return var_561;
      }
      
      public function get webID() : int
      {
         return var_1606;
      }
      
      public function get custom() : String
      {
         return var_1607;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_196)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_196)
         {
            var_86 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_196)
         {
            var_85 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1609;
      }
   }
}
