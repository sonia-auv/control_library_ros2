function rosmsgOut = BodyVelocityDVL(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.header = bus_conv_fcns.ros2.busToMsg.std_msgs.Header(slBusIn.header,rosmsgOut.header(1));
    rosmsgOut.x_vel_btm = double(slBusIn.x_vel_btm);
    rosmsgOut.y_vel_btm = double(slBusIn.y_vel_btm);
    rosmsgOut.z_vel_btm = double(slBusIn.z_vel_btm);
    rosmsgOut.e_vel_btm = double(slBusIn.e_vel_btm);
    rosmsgOut.velocity1 = double(slBusIn.velocity1);
    rosmsgOut.velocity2 = double(slBusIn.velocity2);
    rosmsgOut.velocity3 = double(slBusIn.velocity3);
    rosmsgOut.velocity4 = double(slBusIn.velocity4);
end
