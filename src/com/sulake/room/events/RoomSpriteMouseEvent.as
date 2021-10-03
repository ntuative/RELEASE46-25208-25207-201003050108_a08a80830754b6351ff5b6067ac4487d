package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_2193:Boolean = false;
      
      private var var_2194:Boolean = false;
      
      private var var_2123:String = "";
      
      private var _type:String = "";
      
      private var var_2197:Boolean = false;
      
      private var var_1669:Number = 0;
      
      private var var_2192:Number = 0;
      
      private var var_2195:Number = 0;
      
      private var var_2191:String = "";
      
      private var var_1670:Number = 0;
      
      private var var_2196:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2191 = param2;
         var_2123 = param3;
         var_2192 = param4;
         var_2195 = param5;
         var_1669 = param6;
         var_1670 = param7;
         var_2196 = param8;
         var_2194 = param9;
         var_2197 = param10;
         var_2193 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2196;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2193;
      }
      
      public function get localX() : Number
      {
         return var_1669;
      }
      
      public function get localY() : Number
      {
         return var_1670;
      }
      
      public function get canvasId() : String
      {
         return var_2191;
      }
      
      public function get altKey() : Boolean
      {
         return var_2194;
      }
      
      public function get spriteTag() : String
      {
         return var_2123;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2192;
      }
      
      public function get screenY() : Number
      {
         return var_2195;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2197;
      }
   }
}
