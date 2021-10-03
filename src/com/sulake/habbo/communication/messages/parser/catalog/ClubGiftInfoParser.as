package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   
   public class ClubGiftInfoParser implements IMessageParser
   {
       
      
      private var var_1065:int;
      
      private var var_2148:int;
      
      private var var_580:Array;
      
      public function ClubGiftInfoParser()
      {
         super();
      }
      
      public function get giftsAvailable() : int
      {
         return var_1065;
      }
      
      public function get daysUntilNextGift() : int
      {
         return var_2148;
      }
      
      public function flush() : Boolean
      {
         var_580 = [];
         return true;
      }
      
      public function get offers() : Array
      {
         return var_580;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2148 = param1.readInteger();
         var_1065 = param1.readInteger();
         var_580 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_580.push(new CatalogPageMessageOfferData(param1));
            _loc3_++;
         }
         return true;
      }
   }
}
