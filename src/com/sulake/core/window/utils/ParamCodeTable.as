package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_124;
         param1["bound_to_parent_rect"] = const_82;
         param1["child_window"] = const_846;
         param1["embedded_controller"] = const_331;
         param1["resize_to_accommodate_children"] = const_58;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_582;
         param1["mouse_dragging_target"] = const_192;
         param1["mouse_dragging_trigger"] = const_295;
         param1["mouse_scaling_target"] = const_247;
         param1["mouse_scaling_trigger"] = const_481;
         param1["horizontal_mouse_scaling_trigger"] = const_200;
         param1["vertical_mouse_scaling_trigger"] = const_215;
         param1["observe_parent_input_events"] = const_899;
         param1["optimize_region_to_layout_size"] = const_422;
         param1["parent_window"] = const_804;
         param1["relative_horizontal_scale_center"] = const_158;
         param1["relative_horizontal_scale_fixed"] = const_125;
         param1["relative_horizontal_scale_move"] = const_335;
         param1["relative_horizontal_scale_strech"] = const_238;
         param1["relative_scale_center"] = const_900;
         param1["relative_scale_fixed"] = const_686;
         param1["relative_scale_move"] = const_890;
         param1["relative_scale_strech"] = const_974;
         param1["relative_vertical_scale_center"] = const_154;
         param1["relative_vertical_scale_fixed"] = const_116;
         param1["relative_vertical_scale_move"] = const_298;
         param1["relative_vertical_scale_strech"] = const_232;
         param1["on_resize_align_left"] = const_544;
         param1["on_resize_align_right"] = const_461;
         param1["on_resize_align_center"] = const_472;
         param1["on_resize_align_top"] = const_635;
         param1["on_resize_align_bottom"] = const_398;
         param1["on_resize_align_middle"] = const_371;
         param1["on_accommodate_align_left"] = const_960;
         param1["on_accommodate_align_right"] = const_382;
         param1["on_accommodate_align_center"] = const_672;
         param1["on_accommodate_align_top"] = const_887;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_634;
         param1["route_input_events_to_parent"] = const_387;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_963;
         param1["scalable_with_mouse"] = const_891;
         param1["reflect_horizontal_resize_to_parent"] = const_359;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_231;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
