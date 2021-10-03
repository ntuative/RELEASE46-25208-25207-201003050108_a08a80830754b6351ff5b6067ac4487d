package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_2245:XML;
      
      private var var_1576:ITextWindow;
      
      private var var_1575:ITextWindow;
      
      private var var_2247:XML;
      
      private var var_916:IWindowContainer;
      
      private var var_2327:ITextWindow;
      
      private var var_2248:String = "";
      
      private var var_2377:IButtonWindow;
      
      private var var_2246:XML;
      
      private var var_1577:ITextWindow;
      
      private var var_2249:XML;
      
      private var var_915:IButtonWindow;
      
      private var var_76:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_441:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2247) as IWindowContainer;
               break;
            case Offer.const_462:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2249) as IWindowContainer;
               break;
            case Offer.const_376:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2245) as IWindowContainer;
               break;
            case Offer.const_556:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2246) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_916 != null)
            {
               _window.removeChild(var_916);
               var_916.dispose();
            }
            var_916 = _loc2_;
            _window.addChild(_loc2_);
            var_916.x = 0;
            var_916.y = 0;
         }
         var_1577 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1575 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1576 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2327 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_915 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_915 != null)
         {
            var_915.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_915.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_76 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_76,page,var_2248);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_2247 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_2249 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_2245 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_2246 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_822,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_2248 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_76 = param1.offer;
         attachStub(var_76.priceType);
         if(var_1577 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_76.priceInCredits));
            var_1577.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1575 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_76.priceInPixels));
            var_1575.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1576 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_76.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_76.priceInPixels));
            var_1576.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_915 != null)
         {
            var_915.enable();
         }
      }
   }
}
