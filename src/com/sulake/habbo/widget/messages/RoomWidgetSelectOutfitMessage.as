package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_796:String = "select_outfit";
       
      
      private var var_2170:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_796);
         var_2170 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2170;
      }
   }
}
