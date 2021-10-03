package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1479:int = 2;
      
      public static const const_1423:int = 1;
      
      public static const const_1508:int = 0;
       
      
      private var var_1256:int;
      
      private var var_361:int;
      
      private var var_2349:int;
      
      private var _offerId:int;
      
      private var var_1727:int;
      
      private var var_1728:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1728 = param2;
         var_1727 = param3;
         var_1256 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1728;
      }
      
      public function get furniType() : int
      {
         return var_1727;
      }
      
      public function get price() : int
      {
         return var_1256;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
