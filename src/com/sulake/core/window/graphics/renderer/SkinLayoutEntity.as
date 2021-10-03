package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_233:uint = 1;
      
      public static const const_430:uint = 0;
      
      public static const const_866:uint = 8;
      
      public static const const_254:uint = 4;
      
      public static const const_369:uint = 2;
       
      
      private var var_396:uint;
      
      private var var_1612:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1611:uint;
      
      private var var_99:Rectangle;
      
      private var var_616:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_99 = param3;
         _color = param4;
         var_396 = param5;
         var_1612 = param6;
         var_1611 = param7;
         var_616 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1612;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_396;
      }
      
      public function get scaleV() : uint
      {
         return var_1611;
      }
      
      public function get tags() : Array
      {
         return var_616;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_99 = null;
         var_616 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_99;
      }
   }
}
