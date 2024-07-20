function rosmsgOut = MotorPwm(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.motor1 = uint16(slBusIn.motor1);
    rosmsgOut.motor2 = uint16(slBusIn.motor2);
    rosmsgOut.motor3 = uint16(slBusIn.motor3);
    rosmsgOut.motor4 = uint16(slBusIn.motor4);
    rosmsgOut.motor5 = uint16(slBusIn.motor5);
    rosmsgOut.motor6 = uint16(slBusIn.motor6);
    rosmsgOut.motor7 = uint16(slBusIn.motor7);
    rosmsgOut.motor8 = uint16(slBusIn.motor8);
end
