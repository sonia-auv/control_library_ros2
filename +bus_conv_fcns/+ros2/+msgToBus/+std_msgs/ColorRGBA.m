function slBusOut = ColorRGBA(msgIn, slBusOut, varargin)
%#codegen
%   Copyright 2021-2022 The MathWorks, Inc.
    slBusOut.r = single(msgIn.r);
    slBusOut.g = single(msgIn.g);
    slBusOut.b = single(msgIn.b);
    slBusOut.a = single(msgIn.a);
end
