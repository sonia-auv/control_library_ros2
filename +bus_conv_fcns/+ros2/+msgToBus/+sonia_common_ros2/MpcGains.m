function slBusOut = MpcGains(msgIn, slBusOut, varargin)
%#codegen
%   Copyright 2021-2022 The MathWorks, Inc.
    maxlength = length(slBusOut.ov);
    recvdlength = length(msgIn.ov);
    currentlength = min(maxlength, recvdlength);
    if (max(recvdlength) > maxlength) && ...
            isequal(varargin{1}{1},ros.slros.internal.bus.VarLenArrayTruncationAction.EmitWarning)
        diag = MSLDiagnostic([], ...
                             message('ros:slros:busconvert:TruncatedArray', ...
                                     'ov', msgIn.MessageType, maxlength, max(recvdlength), maxlength, varargin{2}));
        reportAsWarning(diag);
    end
    slBusOut.ov_SL_Info.ReceivedLength = uint32(recvdlength);
    slBusOut.ov_SL_Info.CurrentLength = uint32(currentlength);
    slBusOut.ov = double(msgIn.ov(1:slBusOut.ov_SL_Info.CurrentLength));
    if recvdlength < maxlength
    slBusOut.ov(recvdlength+1:maxlength) = 0;
    end
    maxlength = length(slBusOut.mv);
    recvdlength = length(msgIn.mv);
    currentlength = min(maxlength, recvdlength);
    if (max(recvdlength) > maxlength) && ...
            isequal(varargin{1}{1},ros.slros.internal.bus.VarLenArrayTruncationAction.EmitWarning)
        diag = MSLDiagnostic([], ...
                             message('ros:slros:busconvert:TruncatedArray', ...
                                     'mv', msgIn.MessageType, maxlength, max(recvdlength), maxlength, varargin{2}));
        reportAsWarning(diag);
    end
    slBusOut.mv_SL_Info.ReceivedLength = uint32(recvdlength);
    slBusOut.mv_SL_Info.CurrentLength = uint32(currentlength);
    slBusOut.mv = double(msgIn.mv(1:slBusOut.mv_SL_Info.CurrentLength));
    if recvdlength < maxlength
    slBusOut.mv(recvdlength+1:maxlength) = 0;
    end
    maxlength = length(slBusOut.mvr);
    recvdlength = length(msgIn.mvr);
    currentlength = min(maxlength, recvdlength);
    if (max(recvdlength) > maxlength) && ...
            isequal(varargin{1}{1},ros.slros.internal.bus.VarLenArrayTruncationAction.EmitWarning)
        diag = MSLDiagnostic([], ...
                             message('ros:slros:busconvert:TruncatedArray', ...
                                     'mvr', msgIn.MessageType, maxlength, max(recvdlength), maxlength, varargin{2}));
        reportAsWarning(diag);
    end
    slBusOut.mvr_SL_Info.ReceivedLength = uint32(recvdlength);
    slBusOut.mvr_SL_Info.CurrentLength = uint32(currentlength);
    slBusOut.mvr = double(msgIn.mvr(1:slBusOut.mvr_SL_Info.CurrentLength));
    if recvdlength < maxlength
    slBusOut.mvr(recvdlength+1:maxlength) = 0;
    end
    slBusOut.max_thrust = double(msgIn.max_thrust);
    slBusOut.min_thrust = double(msgIn.min_thrust);
end
