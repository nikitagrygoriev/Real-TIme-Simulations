--------------------------------------------------------
--  This file was automatically generated by Ocarina  --
--  Do NOT hand-modify this file, as your             --
--  changes will be lost when you re-run Ocarina      --
--------------------------------------------------------
pragma Style_Checks
 ("NM32766");

with Interfaces;
with PolyORB_HI.Port_Type_Marshallers;
with PolyORB_HI.Utils;
with PolyORB_HI_Generated.Activity;
use PolyORB_HI_Generated.Activity;
with Ada.Real_Time;
with PolyORB_HI.Time_Marshallers;
with PolyORB_HI_Generated.Marshallers;

package body PolyORB_HI_Generated.Transport is

  procedure radar_system_receive_Deliver
   (Port : PolyORB_HI_Generated.Deployment.Port_Type;
    From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Msg : in out PolyORB_HI.Messages.Message_Type);

  procedure radar_system_analyse_Deliver
   (Port : PolyORB_HI_Generated.Deployment.Port_Type;
    From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Msg : in out PolyORB_HI.Messages.Message_Type);

  procedure radar_system_display_Deliver
   (Port : PolyORB_HI_Generated.Deployment.Port_Type;
    From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Msg : in out PolyORB_HI.Messages.Message_Type);

  procedure radar_system_control_angle_Deliver
   (Port : PolyORB_HI_Generated.Deployment.Port_Type;
    From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Msg : in out PolyORB_HI.Messages.Message_Type);

  -------------
  -- Deliver -- 
  -------------

  procedure Deliver
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Message : PolyORB_HI.Streams.Stream_Element_Array)
  is
    use PolyORB_HI_Generated.Deployment;
    Msg : PolyORB_HI.Messages.Message_Type;
    Value : Interfaces.Unsigned_16;
    Port : PolyORB_HI_Generated.Deployment.Port_Type;
    use type PolyORB_HI.Streams.Stream_Element_Offset;
  begin
    PolyORB_HI.Messages.Write
     (Msg,
      Message
       ((Message'First
          + PolyORB_HI.Messages.Header_Size) .. Message'Last));
    PolyORB_HI.Port_Type_Marshallers.Unmarshall
     (Value,
      Msg);
    Port :=
     PolyORB_HI.Utils.Corresponding_Port
       (Value);
    if (Entity
      = PolyORB_HI_Generated.Deployment.main_receive_K)
    then
      radar_system_receive_Deliver
       (Port,
        PolyORB_HI.Messages.Sender
         (Message),
        Msg);
    elsif (Entity
      = PolyORB_HI_Generated.Deployment.main_analyse_K)
    then
      radar_system_analyse_Deliver
       (Port,
        PolyORB_HI.Messages.Sender
         (Message),
        Msg);
    elsif (Entity
      = PolyORB_HI_Generated.Deployment.main_display_K)
    then
      radar_system_display_Deliver
       (Port,
        PolyORB_HI.Messages.Sender
         (Message),
        Msg);
    elsif (Entity
      = PolyORB_HI_Generated.Deployment.main_control_angle_K)
    then
      radar_system_control_angle_Deliver
       (Port,
        PolyORB_HI.Messages.Sender
         (Message),
        Msg);
    end if;
  end Deliver;

  function radar_system_receive_Send
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Message : PolyORB_HI.Streams.Stream_Element_Array)
   return PolyORB_HI.Errors.Error_Kind;

  function radar_system_analyse_Send
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Message : PolyORB_HI.Streams.Stream_Element_Array)
   return PolyORB_HI.Errors.Error_Kind;

  function radar_system_display_Send
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Message : PolyORB_HI.Streams.Stream_Element_Array)
   return PolyORB_HI.Errors.Error_Kind;

  function radar_system_transmit_Send
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Message : PolyORB_HI.Streams.Stream_Element_Array)
   return PolyORB_HI.Errors.Error_Kind;

  function radar_system_control_angle_Send
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Message : PolyORB_HI.Streams.Stream_Element_Array)
   return PolyORB_HI.Errors.Error_Kind;

  ----------
  -- Send -- 
  ----------

  function Send
   (From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Message : PolyORB_HI.Messages.Message_Type)
   return PolyORB_HI.Errors.Error_Kind
  is
    use PolyORB_HI_Generated.Deployment;
    Msg : constant PolyORB_HI.Streams.Stream_Element_Array :=
     PolyORB_HI.Messages.Encapsulate
       (Message,
        From,
        Entity);
  begin
    if (From
      = PolyORB_HI_Generated.Deployment.main_receive_K)
    then
      return radar_system_receive_Send
       (Entity,
        Msg);
    elsif (From
      = PolyORB_HI_Generated.Deployment.main_analyse_K)
    then
      return radar_system_analyse_Send
       (Entity,
        Msg);
    elsif (From
      = PolyORB_HI_Generated.Deployment.main_display_K)
    then
      return radar_system_display_Send
       (Entity,
        Msg);
    elsif (From
      = PolyORB_HI_Generated.Deployment.main_transmit_K)
    then
      return radar_system_transmit_Send
       (Entity,
        Msg);
    elsif (From
      = PolyORB_HI_Generated.Deployment.main_control_angle_K)
    then
      return radar_system_control_angle_Send
       (Entity,
        Msg);
    else
      return PolyORB_HI.Errors.Error_Kind'
       (PolyORB_HI.Errors.Error_Transport);
    end if;
  end Send;

  ----------------------------------
  -- radar_system_receive_Deliver -- 
  ----------------------------------

  procedure radar_system_receive_Deliver
   (Port : PolyORB_HI_Generated.Deployment.Port_Type;
    From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Msg : in out PolyORB_HI.Messages.Message_Type)
  is
    use PolyORB_HI_Generated.Deployment;
    Thread_Interface_� : radar_system_receiver_impl_Interface;
    Time_Stamp_� : Ada.Real_Time.Time;
  begin
    if (Port
      = PolyORB_HI_Generated.Deployment.main_receive_receiver_in_K)
    then
      PolyORB_HI.Time_Marshallers.Unmarshall
       (Time_Stamp_�,
        Msg);
      PolyORB_HI_Generated.Marshallers.Unmarshall
       (receiver_in,
        Thread_Interface_�,
        Msg);
      PolyORB_HI_Generated.Activity.Store_Received_Message
       (PolyORB_HI_Generated.Deployment.main_receive_K,
        Thread_Interface_�,
        From,
        Time_Stamp_�);
    end if;
  end radar_system_receive_Deliver;

  -------------------------------
  -- radar_system_receive_Send -- 
  -------------------------------

  function radar_system_receive_Send
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Message : PolyORB_HI.Streams.Stream_Element_Array)
   return PolyORB_HI.Errors.Error_Kind
  is
    pragma Warnings
     (Off,
      Message);
    pragma Warnings
     (Off,
      Entity);
    use PolyORB_HI_Generated.Deployment;
  begin
    if (Entity
      = PolyORB_HI_Generated.Deployment.main_analyse_K)
    then
      Deliver
       (Entity,
        Message);
      return PolyORB_HI.Errors.Error_Kind'
       (PolyORB_HI.Errors.Error_None);
    else
      return PolyORB_HI.Errors.Error_Kind'
       (PolyORB_HI.Errors.Error_Transport);
    end if;
  end radar_system_receive_Send;

  ----------------------------------
  -- radar_system_analyse_Deliver -- 
  ----------------------------------

  procedure radar_system_analyse_Deliver
   (Port : PolyORB_HI_Generated.Deployment.Port_Type;
    From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Msg : in out PolyORB_HI.Messages.Message_Type)
  is
    use PolyORB_HI_Generated.Deployment;
    Thread_Interface_� : radar_system_analyser_impl_Interface;
    Time_Stamp_� : Ada.Real_Time.Time;
  begin
    if (Port
      = PolyORB_HI_Generated.Deployment.main_analyse_from_transmitter_K)
    then
      PolyORB_HI_Generated.Marshallers.Unmarshall
       (from_transmitter,
        Thread_Interface_�,
        Msg);
      PolyORB_HI_Generated.Activity.Store_Received_Message
       (PolyORB_HI_Generated.Deployment.main_analyse_K,
        Thread_Interface_�,
        From);
    elsif (Port
      = PolyORB_HI_Generated.Deployment.main_analyse_from_receiver_K)
    then
      PolyORB_HI.Time_Marshallers.Unmarshall
       (Time_Stamp_�,
        Msg);
      PolyORB_HI_Generated.Marshallers.Unmarshall
       (from_receiver,
        Thread_Interface_�,
        Msg);
      PolyORB_HI_Generated.Activity.Store_Received_Message
       (PolyORB_HI_Generated.Deployment.main_analyse_K,
        Thread_Interface_�,
        From,
        Time_Stamp_�);
    elsif (Port
      = PolyORB_HI_Generated.Deployment.main_analyse_from_controller_K)
    then
      PolyORB_HI.Time_Marshallers.Unmarshall
       (Time_Stamp_�,
        Msg);
      PolyORB_HI_Generated.Marshallers.Unmarshall
       (from_controller,
        Thread_Interface_�,
        Msg);
      PolyORB_HI_Generated.Activity.Store_Received_Message
       (PolyORB_HI_Generated.Deployment.main_analyse_K,
        Thread_Interface_�,
        From,
        Time_Stamp_�);
    end if;
  end radar_system_analyse_Deliver;

  -------------------------------
  -- radar_system_analyse_Send -- 
  -------------------------------

  function radar_system_analyse_Send
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Message : PolyORB_HI.Streams.Stream_Element_Array)
   return PolyORB_HI.Errors.Error_Kind
  is
    pragma Warnings
     (Off,
      Message);
    pragma Warnings
     (Off,
      Entity);
    use PolyORB_HI_Generated.Deployment;
  begin
    if (Entity
      = PolyORB_HI_Generated.Deployment.main_display_K)
    then
      Deliver
       (Entity,
        Message);
      return PolyORB_HI.Errors.Error_Kind'
       (PolyORB_HI.Errors.Error_None);
    else
      return PolyORB_HI.Errors.Error_Kind'
       (PolyORB_HI.Errors.Error_Transport);
    end if;
  end radar_system_analyse_Send;

  ----------------------------------
  -- radar_system_display_Deliver -- 
  ----------------------------------

  procedure radar_system_display_Deliver
   (Port : PolyORB_HI_Generated.Deployment.Port_Type;
    From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Msg : in out PolyORB_HI.Messages.Message_Type)
  is
    use PolyORB_HI_Generated.Deployment;
    Thread_Interface_� : radar_system_display_panel_impl_Interface;
    Time_Stamp_� : Ada.Real_Time.Time;
  begin
    if (Port
      = PolyORB_HI_Generated.Deployment.main_display_display_in_K)
    then
      PolyORB_HI.Time_Marshallers.Unmarshall
       (Time_Stamp_�,
        Msg);
      PolyORB_HI_Generated.Marshallers.Unmarshall
       (display_in,
        Thread_Interface_�,
        Msg);
      PolyORB_HI_Generated.Activity.Store_Received_Message
       (PolyORB_HI_Generated.Deployment.main_display_K,
        Thread_Interface_�,
        From,
        Time_Stamp_�);
    end if;
  end radar_system_display_Deliver;

  -------------------------------
  -- radar_system_display_Send -- 
  -------------------------------

  function radar_system_display_Send
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Message : PolyORB_HI.Streams.Stream_Element_Array)
   return PolyORB_HI.Errors.Error_Kind
  is
    pragma Warnings
     (Off,
      Message);
    pragma Warnings
     (Off,
      Entity);
  begin
    --  Device
    return PolyORB_HI.Errors.Error_Kind'
     (PolyORB_HI.Errors.Error_Transport);
  end radar_system_display_Send;

  --------------------------------
  -- radar_system_transmit_Send -- 
  --------------------------------

  function radar_system_transmit_Send
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Message : PolyORB_HI.Streams.Stream_Element_Array)
   return PolyORB_HI.Errors.Error_Kind
  is
    pragma Warnings
     (Off,
      Message);
    pragma Warnings
     (Off,
      Entity);
    use PolyORB_HI_Generated.Deployment;
  begin
    --  Device
    if (Entity
      = PolyORB_HI_Generated.Deployment.main_analyse_K)
    then
      Deliver
       (Entity,
        Message);
      return PolyORB_HI.Errors.Error_Kind'
       (PolyORB_HI.Errors.Error_None);
    else
      return PolyORB_HI.Errors.Error_Kind'
       (PolyORB_HI.Errors.Error_Transport);
    end if;
  end radar_system_transmit_Send;

  ----------------------------------------
  -- radar_system_control_angle_Deliver -- 
  ----------------------------------------

  procedure radar_system_control_angle_Deliver
   (Port : PolyORB_HI_Generated.Deployment.Port_Type;
    From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Msg : in out PolyORB_HI.Messages.Message_Type)
  is
    use PolyORB_HI_Generated.Deployment;
    Thread_Interface_� : radar_system_controller_impl_Interface;
    Time_Stamp_� : Ada.Real_Time.Time;
  begin
    if (Port
      = PolyORB_HI_Generated.Deployment.main_control_angle_controller_in_K)
    then
      PolyORB_HI.Time_Marshallers.Unmarshall
       (Time_Stamp_�,
        Msg);
      PolyORB_HI_Generated.Marshallers.Unmarshall
       (controller_in,
        Thread_Interface_�,
        Msg);
      PolyORB_HI_Generated.Activity.Store_Received_Message
       (PolyORB_HI_Generated.Deployment.main_control_angle_K,
        Thread_Interface_�,
        From,
        Time_Stamp_�);
    end if;
  end radar_system_control_angle_Deliver;

  -------------------------------------
  -- radar_system_control_angle_Send -- 
  -------------------------------------

  function radar_system_control_angle_Send
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Message : PolyORB_HI.Streams.Stream_Element_Array)
   return PolyORB_HI.Errors.Error_Kind
  is
    pragma Warnings
     (Off,
      Message);
    pragma Warnings
     (Off,
      Entity);
    use PolyORB_HI_Generated.Deployment;
  begin
    if (Entity
      = PolyORB_HI_Generated.Deployment.main_analyse_K)
    then
      Deliver
       (Entity,
        Message);
      return PolyORB_HI.Errors.Error_Kind'
       (PolyORB_HI.Errors.Error_None);
    else
      return PolyORB_HI.Errors.Error_Kind'
       (PolyORB_HI.Errors.Error_Transport);
    end if;
  end radar_system_control_angle_Send;

end PolyORB_HI_Generated.Transport;