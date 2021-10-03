package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_382:uint;
      
      private var var_993:IUnknown;
      
      private var var_1174:String;
      
      private var var_992:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_992 = param1;
         var_1174 = getQualifiedClassName(var_992);
         var_993 = param2;
         var_382 = 0;
      }
      
      public function get iid() : IID
      {
         return var_992;
      }
      
      public function get disposed() : Boolean
      {
         return var_993 == null;
      }
      
      public function get references() : uint
      {
         return var_382;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_382) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_993;
      }
      
      public function get iis() : String
      {
         return var_1174;
      }
      
      public function reserve() : uint
      {
         return ++var_382;
      }
      
      public function dispose() : void
      {
         var_992 = null;
         var_1174 = null;
         var_993 = null;
         var_382 = 0;
      }
   }
}
