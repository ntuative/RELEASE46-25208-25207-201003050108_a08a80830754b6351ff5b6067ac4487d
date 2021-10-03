package com.sulake.habbo.widget.events
{
   public class RoomWidgetUserTagsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_150:String = "RWUTUE_USER_TAGS";
       
      
      private var _userId:int;
      
      private var var_616:Array;
      
      private var var_1870:Boolean;
      
      public function RoomWidgetUserTagsUpdateEvent(param1:int, param2:Array, param3:Boolean, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_150,param4,param5);
         _userId = param1;
         var_616 = param2;
         var_1870 = param3;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get tags() : Array
      {
         return var_616;
      }
      
      public function get isOwnUser() : Boolean
      {
         return var_1870;
      }
   }
}
