package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1144:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_772:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1144 = param1;
         var_772 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_772;
      }
      
      public function get identifier() : IID
      {
         return var_1144;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1144 = null;
            while(false)
            {
               var_772.pop();
            }
            var_772 = null;
         }
      }
   }
}
