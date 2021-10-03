package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_196:String = "e";
      
      public static const const_74:String = "i";
      
      public static const const_76:String = "s";
       
      
      private var var_944:String;
      
      private var var_1120:String;
      
      private var var_1119:int;
      
      private var var_1746:int;
      
      private var var_945:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1120 = param1.readString();
         var_1746 = param1.readInteger();
         var_944 = param1.readString();
         var_945 = param1.readInteger();
         var_1119 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_945;
      }
      
      public function get productType() : String
      {
         return var_1120;
      }
      
      public function get expiration() : int
      {
         return var_1119;
      }
      
      public function get furniClassId() : int
      {
         return var_1746;
      }
      
      public function get extraParam() : String
      {
         return var_944;
      }
   }
}
