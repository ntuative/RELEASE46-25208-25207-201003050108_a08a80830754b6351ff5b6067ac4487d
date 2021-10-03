package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_241:String = "RWFAM_MOVE";
      
      public static const const_542:String = "RWFUAM_ROTATE";
      
      public static const const_652:String = "RWFAM_PICKUP";
       
      
      private var var_1728:int = 0;
      
      private var var_2157:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1728 = param2;
         var_2157 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1728;
      }
      
      public function get furniCategory() : int
      {
         return var_2157;
      }
   }
}
