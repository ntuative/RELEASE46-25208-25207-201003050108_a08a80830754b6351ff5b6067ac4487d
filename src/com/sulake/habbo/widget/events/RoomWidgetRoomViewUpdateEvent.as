package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_509:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_614:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_266:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1410:Point;
      
      private var var_1409:Rectangle;
      
      private var var_194:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1409 = param2;
         var_1410 = param3;
         var_194 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1409 != null)
         {
            return var_1409.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_194;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1410 != null)
         {
            return var_1410.clone();
         }
         return null;
      }
   }
}
