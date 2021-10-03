package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1256:int;
      
      private var var_1912:int = -1;
      
      private var var_361:int;
      
      private var var_1745:int;
      
      private var var_1727:int;
      
      private var _offerId:int;
      
      private var var_1255:int;
      
      private var var_1728:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1728 = param2;
         var_1727 = param3;
         var_1256 = param4;
         var_361 = param5;
         var_1912 = param6;
         var_1745 = param7;
         var_1255 = param8;
      }
      
      public function get status() : int
      {
         return var_361;
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
      
      public function get averagePrice() : int
      {
         return var_1745;
      }
      
      public function get furniId() : int
      {
         return var_1728;
      }
   }
}
