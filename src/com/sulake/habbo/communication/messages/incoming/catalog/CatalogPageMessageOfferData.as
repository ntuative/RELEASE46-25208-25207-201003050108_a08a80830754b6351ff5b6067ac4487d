package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_886:Array;
      
      private var var_856:int;
      
      private var var_1295:String;
      
      private var _offerId:int;
      
      private var var_857:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1295 = param1.readString();
         var_856 = param1.readInteger();
         var_857 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_886 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_886.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_886;
      }
      
      public function get priceInCredits() : int
      {
         return var_856;
      }
      
      public function get localizationId() : String
      {
         return var_1295;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_857;
      }
   }
}
