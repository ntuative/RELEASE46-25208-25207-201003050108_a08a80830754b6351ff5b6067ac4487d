package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1627:int;
      
      private var var_1549:int;
      
      private var var_1631:int;
      
      private var var_1626:int;
      
      private var var_1628:int;
      
      private var var_1548:int;
      
      private var var_1630:int;
      
      private var var_1629:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1627;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1549;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1630;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1626;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1628;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1548;
      }
      
      public function get commission() : int
      {
         return var_1631;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1629 = param1.readBoolean();
         var_1631 = param1.readInteger();
         var_1549 = param1.readInteger();
         var_1548 = param1.readInteger();
         var_1626 = param1.readInteger();
         var_1627 = param1.readInteger();
         var_1628 = param1.readInteger();
         var_1630 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1629;
      }
   }
}
