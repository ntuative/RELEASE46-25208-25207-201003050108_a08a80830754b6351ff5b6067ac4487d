package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1991:int;
      
      private var var_1256:int;
      
      private var var_1745:int;
      
      private var var_1912:int = -1;
      
      private var var_361:int;
      
      private var var_1727:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1255:int;
      
      private var var_1728:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1728 = param2;
         var_1727 = param3;
         var_1256 = param4;
         var_361 = param5;
         var_1745 = param6;
         var_1255 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1991 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1991;
      }
      
      public function get price() : int
      {
         return var_1256;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1912;
      }
      
      public function get offerCount() : int
      {
         return var_1255;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1727;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1912 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1256 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1255 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_361;
      }
      
      public function get averagePrice() : int
      {
         return var_1745;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1728;
      }
   }
}
