package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_516:String = "RWOCM_CLUB_MAIN";
      
      public static const const_619:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1824:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_619);
         var_1824 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1824;
      }
   }
}
