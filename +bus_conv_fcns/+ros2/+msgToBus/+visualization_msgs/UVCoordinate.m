function slBusOut = UVCoordinate(msgIn, slBusOut, varargin)
%#codegen
%   Copyright 2021-2022 The MathWorks, Inc.
    slBusOut.u = single(msgIn.u);
    slBusOut.v = single(msgIn.v);
end
