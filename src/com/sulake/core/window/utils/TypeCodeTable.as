package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_670;
         param1["bitmap"] = const_650;
         param1["border"] = const_618;
         param1["border_notify"] = const_1231;
         param1["button"] = const_432;
         param1["button_thick"] = const_560;
         param1["button_icon"] = const_1143;
         param1["button_group_left"] = const_671;
         param1["button_group_center"] = const_728;
         param1["button_group_right"] = const_570;
         param1["canvas"] = const_718;
         param1["checkbox"] = const_617;
         param1["closebutton"] = const_819;
         param1["container"] = const_329;
         param1["container_button"] = const_682;
         param1["display_object_wrapper"] = const_591;
         param1["dropmenu"] = const_360;
         param1["dropmenu_item"] = const_471;
         param1["frame"] = const_279;
         param1["frame_notify"] = const_1219;
         param1["header"] = const_535;
         param1["icon"] = const_831;
         param1["itemgrid"] = const_973;
         param1["itemgrid_horizontal"] = const_378;
         param1["itemgrid_vertical"] = const_511;
         param1["itemlist"] = const_934;
         param1["itemlist_horizontal"] = const_296;
         param1["itemlist_vertical"] = const_304;
         param1["maximizebox"] = const_1271;
         param1["menu"] = const_1227;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_874;
         param1["minimizebox"] = const_1225;
         param1["notify"] = const_1133;
         param1["null"] = const_696;
         param1["password"] = const_574;
         param1["radiobutton"] = const_709;
         param1["region"] = const_409;
         param1["restorebox"] = const_1194;
         param1["scaler"] = const_829;
         param1["scaler_horizontal"] = const_1151;
         param1["scaler_vertical"] = const_1164;
         param1["scrollbar_horizontal"] = const_401;
         param1["scrollbar_vertical"] = const_734;
         param1["scrollbar_slider_button_up"] = const_977;
         param1["scrollbar_slider_button_down"] = const_948;
         param1["scrollbar_slider_button_left"] = const_1017;
         param1["scrollbar_slider_button_right"] = const_924;
         param1["scrollbar_slider_bar_horizontal"] = const_815;
         param1["scrollbar_slider_bar_vertical"] = const_903;
         param1["scrollbar_slider_track_horizontal"] = const_852;
         param1["scrollbar_slider_track_vertical"] = const_824;
         param1["scrollable_itemlist"] = const_1327;
         param1["scrollable_itemlist_vertical"] = const_426;
         param1["scrollable_itemlist_horizontal"] = const_968;
         param1["selector"] = const_513;
         param1["selector_list"] = const_576;
         param1["submenu"] = const_874;
         param1["tab_button"] = const_499;
         param1["tab_container_button"] = const_978;
         param1["tab_context"] = const_431;
         param1["tab_content"] = const_991;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_501;
         param1["input"] = const_536;
         param1["toolbar"] = const_1319;
         param1["tooltip"] = const_330;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
