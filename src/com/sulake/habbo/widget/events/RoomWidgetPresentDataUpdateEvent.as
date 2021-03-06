package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_391:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_480:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_77:String = "RWPDUE_CONTENTS";
      
      public static const const_468:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_381:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_63:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_187:String;
      
      private var var_1718:BitmapData;
      
      private var var_145:int = -1;
      
      private var var_10:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_145 = param2;
         var_187 = param3;
         var_10 = param4;
         var_1718 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1718;
      }
      
      public function get text() : String
      {
         return var_187;
      }
      
      public function get objectId() : int
      {
         return var_145;
      }
      
      public function get controller() : Boolean
      {
         return var_10;
      }
   }
}
