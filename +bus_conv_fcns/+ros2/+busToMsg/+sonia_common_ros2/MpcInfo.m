function rosmsgOut = MpcInfo(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.is_mpc_alive = logical(slBusIn.is_mpc_alive);
    rosmsgOut.target_reached = logical(slBusIn.target_reached);
    rosmsgOut.is_trajectory_done = logical(slBusIn.is_trajectory_done);
    rosmsgOut.thrusters_status = logical(slBusIn.thrusters_status(1:slBusIn.thrusters_status_SL_Info.CurrentLength));
    rosmsgOut.mpc_status = int8(slBusIn.mpc_status);
    rosmsgOut.mpc_mode = uint8(slBusIn.mpc_mode);
    rosmsgOut.current_gains = bus_conv_fcns.ros2.busToMsg.sonia_common_ros2.MpcGains(slBusIn.current_gains,rosmsgOut.current_gains(1));
end
