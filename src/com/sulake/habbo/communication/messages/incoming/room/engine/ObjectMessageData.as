package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_963:int = 0;
      
      private var _data:String = "";
      
      private var var_1482:int = -1;
      
      private var var_32:int = 0;
      
      private var _type:int = 0;
      
      private var var_964:int = 0;
      
      private var var_2348:String = "";
      
      private var var_1732:int = 0;
      
      private var _id:int = 0;
      
      private var var_196:Boolean = false;
      
      private var var_222:int = 0;
      
      private var var_2124:String = null;
      
      private var var_85:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_196)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_196)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_222;
      }
      
      public function get extra() : int
      {
         return var_1482;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_196)
         {
            var_222 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_196)
         {
            var_85 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_196)
         {
            var_1482 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_196)
         {
            var_32 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1732;
      }
      
      public function get staticClass() : String
      {
         return var_2124;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_196)
         {
            var_1732 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_196)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_196)
         {
            var_2124 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_196 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_196)
         {
            var_963 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_196)
         {
            var_964 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_196)
         {
            var_86 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_963;
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get sizeY() : int
      {
         return var_964;
      }
   }
}
