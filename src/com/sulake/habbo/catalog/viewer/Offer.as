package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_1015:String = "price_type_none";
      
      public static const const_400:String = "pricing_model_multi";
      
      public static const const_441:String = "price_type_credits";
      
      public static const const_376:String = "price_type_credits_and_pixels";
      
      public static const const_451:String = "pricing_model_bundle";
      
      public static const const_439:String = "pricing_model_single";
      
      public static const const_556:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1169:String = "pricing_model_unknown";
      
      public static const const_462:String = "price_type_pixels";
       
      
      private var var_856:int;
      
      private var _offerId:int;
      
      private var var_857:int;
      
      private var var_408:String;
      
      private var var_589:String;
      
      private var var_2074:int;
      
      private var var_665:ICatalogPage;
      
      private var var_1295:String;
      
      private var var_407:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1295 = param1.localizationId;
         var_856 = param1.priceInCredits;
         var_857 = param1.priceInPixels;
         var_665 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_408;
      }
      
      public function get page() : ICatalogPage
      {
         return var_665;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2074 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_407;
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
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1295 = "";
         var_856 = 0;
         var_857 = 0;
         var_665 = null;
         if(var_407 != null)
         {
            var_407.dispose();
            var_407 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_589;
      }
      
      public function get previewCallbackId() : int
      {
         return var_2074;
      }
      
      public function get priceInCredits() : int
      {
         return var_856;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_408 = const_439;
            }
            else
            {
               var_408 = const_400;
            }
         }
         else if(param1.length > 1)
         {
            var_408 = const_451;
         }
         else
         {
            var_408 = const_1169;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_408)
         {
            case const_439:
               var_407 = new SingleProductContainer(this,param1);
               break;
            case const_400:
               var_407 = new MultiProductContainer(this,param1);
               break;
            case const_451:
               var_407 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_408);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_856 > 0 && var_857 > 0)
         {
            var_589 = const_376;
         }
         else if(var_856 > 0)
         {
            var_589 = const_441;
         }
         else if(var_857 > 0)
         {
            var_589 = const_462;
         }
         else
         {
            var_589 = const_1015;
         }
      }
   }
}
