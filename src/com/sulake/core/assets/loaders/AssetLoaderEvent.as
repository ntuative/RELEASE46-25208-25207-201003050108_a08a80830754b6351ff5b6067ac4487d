package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_817:String = "AssetLoaderEventUnload";
      
      public static const const_42:String = "AssetLoaderEventError";
      
      public static const const_835:String = "AssetLoaderEventOpen";
      
      public static const const_932:String = "AssetLoaderEventProgress";
      
      public static const const_1016:String = "AssetLoaderEventStatus";
      
      public static const const_30:String = "AssetLoaderEventComplete";
       
      
      private var var_361:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_361 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_361;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_361);
      }
   }
}
