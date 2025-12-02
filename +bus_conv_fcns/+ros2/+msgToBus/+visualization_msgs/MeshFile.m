function slBusOut = MeshFile(msgIn, slBusOut, varargin)
%#codegen
%   Copyright 2021-2022 The MathWorks, Inc.
    slBusOut.filename_SL_Info.ReceivedLength = uint32(strlength(msgIn.filename));
    currlen  = min(slBusOut.filename_SL_Info.ReceivedLength, length(slBusOut.filename));
    slBusOut.filename_SL_Info.CurrentLength = uint32(currlen);
    slBusOut.filename(1:currlen) = uint8(char(msgIn.filename(1:currlen))).';
    maxlength = length(slBusOut.data);
    recvdlength = length(msgIn.data);
    currentlength = min(maxlength, recvdlength);
    if (max(recvdlength) > maxlength) && ...
            isequal(varargin{1}{1},ros.slros.internal.bus.VarLenArrayTruncationAction.EmitWarning)
        diag = MSLDiagnostic([], ...
                             message('ros:slros:busconvert:TruncatedArray', ...
                                     'data', msgIn.MessageType, maxlength, max(recvdlength), maxlength, varargin{2}));
        reportAsWarning(diag);
    end
    slBusOut.data_SL_Info.ReceivedLength = uint32(recvdlength);
    slBusOut.data_SL_Info.CurrentLength = uint32(currentlength);
    slBusOut.data = uint8(msgIn.data(1:slBusOut.data_SL_Info.CurrentLength));
    if recvdlength < maxlength
    slBusOut.data(recvdlength+1:maxlength) = 0;
    end
end
