--------------------------------------------------------
--  This file was automatically generated by Ocarina  --
--  Do NOT hand-modify this file, as your             --
--  changes will be lost when you re-run Ocarina      --
--------------------------------------------------------
pragma Style_Checks
 ("NM32766");

with radar;

package body PolyORB_HI_Generated.Subprograms is

  procedure radar_system_Receiver_Spg
   (receiver_out : out PolyORB_HI_Generated.Types.Target_Distance;
    receiver_in : PolyORB_HI_Generated.Types.Target_Distance)
   renames radar.receiver;

  procedure radar_system_Analyser_Spg
   (from_receiver : PolyORB_HI_Generated.Types.Target_Distance;
    analyser_out : out PolyORB_HI_Generated.Types.Target_Position_impl;
    from_controller : PolyORB_HI_Generated.Types.Motor_Position)
   renames radar.analyser;

  procedure radar_system_Display_Spg
   (display_in : PolyORB_HI_Generated.Types.Target_Position_impl)
   renames radar.display_panel;

  procedure radar_system_Controller_Spg
   (controller_in : PolyORB_HI_Generated.Types.Motor_Position;
    controller_out : out PolyORB_HI_Generated.Types.Motor_Position)
   renames radar.controller;

end PolyORB_HI_Generated.Subprograms;
