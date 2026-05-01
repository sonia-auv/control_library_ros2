function slBusOut = BodyVelocityDVL(msgIn, slBusOut, varargin)
%#codegen
%   Copyright 2021-2022 The MathWorks, Inc.
    currentlength = length(slBusOut.header);
    for iter=1:currentlength
        slBusOut.header(iter) = bus_conv_fcns.ros2.msgToBus.std_msgs.Header(msgIn.header(iter),slBusOut(1).header(iter),varargin{:});
    end
    slBusOut.header = bus_conv_fcns.ros2.msgToBus.std_msgs.Header(msgIn.header,slBusOut(1).header,varargin{:});
    slBusOut.x_vel_btm = double(msgIn.x_vel_btm);
    slBusOut.y_vel_btm = double(msgIn.y_vel_btm);
    slBusOut.z_vel_btm = double(msgIn.z_vel_btm);
    slBusOut.e_vel_btm = double(msgIn.e_vel_btm);
    slBusOut.velocity1 = double(msgIn.velocity1);
    slBusOut.velocity2 = double(msgIn.velocity2);
    slBusOut.velocity3 = double(msgIn.velocity3);
    slBusOut.velocity4 = double(msgIn.velocity4);
end
