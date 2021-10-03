package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_112:String = "RWPUW_CONTENT";
      
      public static const const_115:String = "RWPUW_OFFER";
      
      public static const const_60:String = "RWPUW_ERROR";
       
      
      private var var_1040:Array = null;
      
      private var var_1282:String = "";
      
      private var var_1216:String;
      
      private var var_1281:String = "";
      
      private var var_1041:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
      }
      
      public function get questionArray() : Array
      {
         return var_1040;
      }
      
      public function get startMessage() : String
      {
         return var_1282;
      }
      
      public function get summary() : String
      {
         return var_1216;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1282 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1041 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1216 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1041;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1281 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1281;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1040 = param1;
      }
   }
}
