package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1298:Boolean;
      
      private var var_1696:String;
      
      private var _frames:XMLList;
      
      private var var_1061:String = "-1";
      
      private var var_745:String;
      
      private var var_171:int = 120;
      
      private var var_1122:String = "-1";
      
      private var var_1123:String;
      
      private var var_1695:Boolean;
      
      private var var_1396:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1298 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1695 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_171 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1123 = param1.@namebase;
         }
         else
         {
            var_1123 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1061 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1122 = param1.@nextState;
         }
         else
         {
            var_1122 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1396 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1696 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_745 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1061 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1695;
      }
      
      public function get defaultState() : String
      {
         return var_1396;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1396 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1696;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_171;
      }
      
      public function get loop() : Boolean
      {
         return var_1298;
      }
      
      public function get nextState() : String
      {
         return var_1122;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_745;
      }
      
      public function get stateOver() : String
      {
         return var_1061;
      }
      
      public function get nameBase() : String
      {
         return var_1123;
      }
   }
}
