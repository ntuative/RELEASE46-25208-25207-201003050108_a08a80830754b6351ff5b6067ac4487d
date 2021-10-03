package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_636:String = "me_menu_settings_view";
      
      private static const const_747:int = 10;
      
      public static const const_713:String = "me_menu_effects_view";
      
      public static const const_113:String = "me_menu_top_view";
      
      public static const const_1280:String = "me_menu_rooms_view";
      
      public static const const_981:String = "me_menu_dance_moves_view";
      
      public static const const_242:String = "me_menu_my_clothes_view";
       
      
      private var var_1846:Boolean = false;
      
      private var _isAnimating:Boolean = false;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1433:int = 0;
      
      private var var_1842:int = 0;
      
      private var var_1841:Boolean = false;
      
      private var var_250:Boolean = false;
      
      private var var_1843:int = 0;
      
      private var var_1845:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_547:Boolean = false;
      
      private var var_92:ClubPromoView;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1166:int = 0;
      
      private var var_1844:Boolean = false;
      
      private var var_982:Point;
      
      private var var_28:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_982 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_1844 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_113);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_735,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_585,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_648,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_530,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_328,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_538,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_358,onShowAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_927,onHideAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_220,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_212,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_562,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_185,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_322,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_97,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_379,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_161,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!_isAnimating)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_547;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_250)
         {
            return;
         }
         if(var_28.window.name == const_636)
         {
            (var_28 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1166 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1433 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1433.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_250 && var_28.window.name == const_242))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_537);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_735,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_585,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_648,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_530,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_328,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_220,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_212,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_562,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_538,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_358,onShowAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_927,onHideAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_185,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_322,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_379,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_97,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_161,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_28 != null)
         {
            var_28.dispose();
            var_28 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_1846;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1845 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onHideAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_92 != null)
         {
            var_92.dispose();
            var_92 = null;
         }
         updateSize();
      }
      
      public function get isDancing() : Boolean
      {
         return var_1841;
      }
      
      public function get creditBalance() : int
      {
         return var_1433;
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_379:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_250 + " view: " + var_28.window.name);
               if(var_250 != true || var_28.window.name != const_113)
               {
                  return;
               }
               (var_28 as MeMenuMainView).setIconAssets("clothes_icon",const_113,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_97:
               hide();
         }
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1845 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_1842;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_547 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_547 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = var_1166 > 0;
         var_1166 = param1.daysLeft;
         var_1842 = param1.periodsLeft;
         var_1843 = param1.pastPeriods;
         var_1846 = param1.allowClubDances;
         if(_loc2_ != param1.daysLeft > 0)
         {
            if(var_28 != null)
            {
               changeView(var_28.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_1841 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_28 != null && var_28.window.name != const_242)
         {
            hide();
         }
      }
      
      private function onShowAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(var_28 != null && var_28.window.name == const_242)
         {
            if(param1.promoMode == RoomWidgetAvatarEditorUpdateEvent.const_990)
            {
               var_92 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_1299);
            }
            else
            {
               var_92 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_356);
            }
            _loc2_ = _mainContainer.getChildByName(var_28.window.name);
            if(_loc2_ != null)
            {
               var_92.window.x = _loc2_.width + const_747;
               _mainContainer.addChild(var_92.window);
               _mainContainer.width = var_92.window.x + var_92.window.width;
            }
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_547 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_547 = true;
            }
         }
         if(var_28 != null && var_28.window.name == const_713)
         {
            (var_28 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_1843;
      }
      
      public function get habboClubDays() : int
      {
         return var_1166;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1138,HabboWindowStyle.const_854,HabboWindowParam.const_39,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_250 = !var_250;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_250 = false;
               break;
            default:
               return;
         }
         if(var_250)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_572);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_28 != null)
         {
            _mainContainer.removeChild(var_28.window);
            var_28.dispose();
            var_28 = null;
         }
         var_250 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_28 != null && var_28.window.name == const_242)
         {
            if(var_92 != null)
            {
               var_92.dispose();
               var_92 = null;
            }
            changeView(const_113);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_1844;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         if(var_92 != null)
         {
            var_92.dispose();
            var_92 = null;
         }
         switch(param1)
         {
            case const_113:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_713:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_981:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_242:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1280:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_636:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_28 != null)
            {
               _mainContainer.removeChild(var_28.window);
               var_28.dispose();
               var_28 = null;
            }
            var_28 = _loc2_;
            var_28.init(this,param1);
         }
         updateSize();
      }
      
      public function updateSize() : void
      {
         if(var_28 != null)
         {
            var_982.x = var_28.window.width + 10;
            var_982.y = var_28.window.height;
            var_28.window.x = 5;
            var_28.window.y = 0;
            _mainContainer.width = var_982.x;
            _mainContainer.height = var_982.y;
            if(var_92 != null)
            {
               _mainContainer.width = var_92.window.x + var_92.window.width + const_747;
            }
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_113);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_731);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_250 = true;
      }
   }
}
