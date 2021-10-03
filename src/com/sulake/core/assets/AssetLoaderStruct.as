package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_719:IAssetLoader;
      
      private var var_1227:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1227 = param1;
         var_719 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_719;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_719 != null)
            {
               if(true)
               {
                  var_719.dispose();
                  var_719 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1227;
      }
   }
}
