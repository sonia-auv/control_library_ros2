function rosmsgOut = MpcGains(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.ov = double(slBusIn.ov(1:slBusIn.ov_SL_Info.CurrentLength));
    rosmsgOut.mv = double(slBusIn.mv(1:slBusIn.mv_SL_Info.CurrentLength));
    rosmsgOut.mvr = double(slBusIn.mvr(1:slBusIn.mvr_SL_Info.CurrentLength));
    rosmsgOut.max_thrust = double(slBusIn.max_thrust);
    rosmsgOut.min_thrust = double(slBusIn.min_thrust);
end
