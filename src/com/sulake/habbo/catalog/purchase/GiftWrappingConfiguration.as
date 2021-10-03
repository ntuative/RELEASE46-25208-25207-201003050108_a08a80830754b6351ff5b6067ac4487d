package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_579:Array;
      
      private var var_1256:int;
      
      private var var_1382:Array;
      
      private var var_578:Array;
      
      private var var_1629:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1629 = _loc2_.isWrappingEnabled;
         var_1256 = _loc2_.wrappingPrice;
         var_1382 = _loc2_.stuffTypes;
         var_578 = _loc2_.boxTypes;
         var_579 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_579;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1382;
      }
      
      public function get price() : int
      {
         return var_1256;
      }
      
      public function get boxTypes() : Array
      {
         return var_578;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1629;
      }
   }
}
