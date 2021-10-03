package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_347:Boolean;
      
      private var var_1290:int;
      
      private var var_1384:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1290 = param1.readInteger();
         var_1384 = param1.readString();
         var_347 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_347;
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
