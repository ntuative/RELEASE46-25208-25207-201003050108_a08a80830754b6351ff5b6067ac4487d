package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1545:BigInteger;
      
      private var var_939:BigInteger;
      
      private var var_2165:BigInteger;
      
      private var var_1546:BigInteger;
      
      private var var_2164:BigInteger;
      
      private var var_1964:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1545 = param1;
         var_2165 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2164.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1546 = new BigInteger();
         var_1546.fromRadix(param1,param2);
         var_2164 = var_1546.modPow(var_939,var_1545);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1964.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_939 = new BigInteger();
         var_939.fromRadix(param1,param2);
         var_1964 = var_2165.modPow(var_939,var_1545);
         return true;
      }
   }
}
