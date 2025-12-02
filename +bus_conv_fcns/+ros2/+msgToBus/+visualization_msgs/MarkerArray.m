function slBusOut = MarkerArray(msgIn, slBusOut, varargin)
%#codegen
%   Copyright 2021-2022 The MathWorks, Inc.
    maxlength = length(slBusOut.markers);
    recvdlength = length(msgIn.markers);
    currentlength = min(maxlength, recvdlength);
    if (max(recvdlength) > maxlength) && ...
            isequal(varargin{1}{1},ros.slros.internal.bus.VarLenArrayTruncationAction.EmitWarning)
        diag = MSLDiagnostic([], ...
                             message('ros:slros:busconvert:TruncatedArray', ...
                                     'markers', msgIn.MessageType, maxlength, max(recvdlength), maxlength, varargin{2}));
        reportAsWarning(diag);
    end
    slBusOut.markers_SL_Info.ReceivedLength = uint32(recvdlength);
    slBusOut.markers_SL_Info.CurrentLength = uint32(currentlength);
    for iter=1:currentlength
        slBusOut.markers(iter) = bus_conv_fcns.ros2.msgToBus.visualization_msgs.Marker(msgIn.markers(iter),slBusOut(1).markers(iter),varargin{:});
    end
end
