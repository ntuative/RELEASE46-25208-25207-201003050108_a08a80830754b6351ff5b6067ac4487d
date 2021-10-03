package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1082:int = 0;
      
      private var var_1145:int = 0;
      
      private var var_1775:String = "";
      
      private var var_1081:int = 0;
      
      private var var_1774:String = "";
      
      private var var_1773:int = 0;
      
      private var var_1561:String = "";
      
      private var var_1769:int = 0;
      
      private var var_1771:int = 0;
      
      private var var_1772:String = "";
      
      private var var_1770:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1769 = param1;
         var_1772 = param2;
         var_1561 = param3;
         var_1775 = param4;
         var_1774 = param5;
         if(param6)
         {
            var_1145 = 1;
         }
         else
         {
            var_1145 = 0;
         }
         var_1773 = param7;
         var_1771 = param8;
         var_1081 = param9;
         var_1770 = param10;
         var_1082 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1769,var_1772,var_1561,var_1775,var_1774,var_1145,var_1773,var_1771,var_1081,var_1770,var_1082];
      }
      
      public function dispose() : void
      {
      }
   }
}
