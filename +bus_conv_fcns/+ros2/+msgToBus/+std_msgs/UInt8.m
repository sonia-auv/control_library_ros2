function slBusOut = UInt8(msgIn, slBusOut, varargin)
%#codegen
%   Copyright 2021-2022 The MathWorks, Inc.
    slBusOut.data = uint8(msgIn.data);
end
