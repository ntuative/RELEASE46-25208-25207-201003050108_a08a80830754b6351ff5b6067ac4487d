package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      private var var_222:int = 0;
      
      private var var_1908:int = 0;
      
      private var var_1909:Number = 0;
      
      private var var_1911:Number = 0;
      
      private var var_1907:Number = 0;
      
      private var var_1906:Number = 0;
      
      private var var_1910:Boolean = false;
      
      private var var_85:Number = 0;
      
      private var _id:int = 0;
      
      private var var_193:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_193 = [];
         super();
         _id = param1;
         var_85 = param2;
         _y = param3;
         var_86 = param4;
         var_1906 = param5;
         var_222 = param6;
         var_1908 = param7;
         var_1909 = param8;
         var_1911 = param9;
         var_1907 = param10;
         var_1910 = param11;
         var_193 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get dir() : int
      {
         return var_222;
      }
      
      public function get localZ() : Number
      {
         return var_1906;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1910;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1908;
      }
      
      public function get targetX() : Number
      {
         return var_1909;
      }
      
      public function get targetY() : Number
      {
         return var_1911;
      }
      
      public function get targetZ() : Number
      {
         return var_1907;
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get actions() : Array
      {
         return var_193.slice();
      }
   }
}
