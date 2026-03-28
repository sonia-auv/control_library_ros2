function rosmsgOut = MotorNewton(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.motor1 = single(slBusIn.motor1);
    rosmsgOut.motor2 = single(slBusIn.motor2);
    rosmsgOut.motor3 = single(slBusIn.motor3);
    rosmsgOut.motor4 = single(slBusIn.motor4);
    rosmsgOut.motor5 = single(slBusIn.motor5);
    rosmsgOut.motor6 = single(slBusIn.motor6);
    rosmsgOut.motor7 = single(slBusIn.motor7);
    rosmsgOut.motor8 = single(slBusIn.motor8);
end
