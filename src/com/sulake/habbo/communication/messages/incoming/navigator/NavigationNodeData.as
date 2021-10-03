package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1290:int;
      
      private var var_1384:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1290 = param1;
         var_1384 = param2;
         Logger.log("READ NODE: " + var_1290 + ", " + var_1384);
      }
      
      public function get nodeName() : String
      {
         return var_1384;
      }
      
      public function get nodeId() : int
      {
         return var_1290;
      }
   }
}
