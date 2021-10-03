package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_86:Number = 0;
      
      private var _data:String = "";
      
      private var var_1482:int = 0;
      
      private var var_32:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1671:Boolean = false;
      
      private var var_2348:String = "";
      
      private var _id:int = 0;
      
      private var var_196:Boolean = false;
      
      private var var_222:String = "";
      
      private var var_1668:int = 0;
      
      private var var_1667:int = 0;
      
      private var var_1669:int = 0;
      
      private var var_1670:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1671 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_196)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1671;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_196)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_222;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_196)
         {
            var_1669 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_196)
         {
            var_1668 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_196)
         {
            var_1667 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_196)
         {
            var_222 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_196)
         {
            var_1670 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_196)
         {
            var_32 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1669;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_196)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1668;
      }
      
      public function get wallY() : Number
      {
         return var_1667;
      }
      
      public function get localY() : Number
      {
         return var_1670;
      }
      
      public function setReadOnly() : void
      {
         var_196 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_196)
         {
            var_86 = param1;
         }
      }
   }
}
