package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1518:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1579:String = "ROE_MOUSE_ENTER";
      
      public static const const_433:String = "ROE_MOUSE_MOVE";
      
      public static const const_1565:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_223:String = "ROE_MOUSE_CLICK";
      
      public static const const_447:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2197:Boolean;
      
      private var var_2193:Boolean;
      
      private var var_2194:Boolean;
      
      private var var_2196:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_2194 = param4;
         var_2196 = param5;
         var_2197 = param6;
         var_2193 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2193;
      }
      
      public function get altKey() : Boolean
      {
         return var_2194;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2196;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2197;
      }
   }
}
