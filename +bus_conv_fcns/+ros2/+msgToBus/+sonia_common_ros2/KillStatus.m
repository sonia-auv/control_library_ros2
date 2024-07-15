function slBusOut = KillStatus(msgIn, slBusOut, varargin)
%#codegen
%   Copyright 2021-2022 The MathWorks, Inc.
    slBusOut.status = logical(msgIn.status);
end
