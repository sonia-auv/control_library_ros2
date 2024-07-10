function slBusOut = MultiDOFJointTrajectoryPoint(msgIn, slBusOut, varargin)
%#codegen
%   Copyright 2021-2022 The MathWorks, Inc.
    maxlength = length(slBusOut.transforms);
    recvdlength = length(msgIn.transforms);
    currentlength = min(maxlength, recvdlength);
    if (max(recvdlength) > maxlength) && ...
            isequal(varargin{1}{1},ros.slros.internal.bus.VarLenArrayTruncationAction.EmitWarning)
        diag = MSLDiagnostic([], ...
                             message('ros:slros:busconvert:TruncatedArray', ...
                                     'transforms', msgIn.MessageType, maxlength, max(recvdlength), maxlength, varargin{2}));
        reportAsWarning(diag);
    end
    slBusOut.transforms_SL_Info.ReceivedLength = uint32(recvdlength);
    slBusOut.transforms_SL_Info.CurrentLength = uint32(currentlength);
    for iter=1:currentlength
        slBusOut.transforms(iter) = bus_conv_fcns.ros2.msgToBus.geometry_msgs.Transform(msgIn.transforms(iter),slBusOut(1).transforms(iter),varargin{:});
    end
    maxlength = length(slBusOut.velocities);
    recvdlength = length(msgIn.velocities);
    currentlength = min(maxlength, recvdlength);
    if (max(recvdlength) > maxlength) && ...
            isequal(varargin{1}{1},ros.slros.internal.bus.VarLenArrayTruncationAction.EmitWarning)
        diag = MSLDiagnostic([], ...
                             message('ros:slros:busconvert:TruncatedArray', ...
                                     'velocities', msgIn.MessageType, maxlength, max(recvdlength), maxlength, varargin{2}));
        reportAsWarning(diag);
    end
    slBusOut.velocities_SL_Info.ReceivedLength = uint32(recvdlength);
    slBusOut.velocities_SL_Info.CurrentLength = uint32(currentlength);
    for iter=1:currentlength
        slBusOut.velocities(iter) = bus_conv_fcns.ros2.msgToBus.geometry_msgs.Twist(msgIn.velocities(iter),slBusOut(1).velocities(iter),varargin{:});
    end
    maxlength = length(slBusOut.accelerations);
    recvdlength = length(msgIn.accelerations);
    currentlength = min(maxlength, recvdlength);
    if (max(recvdlength) > maxlength) && ...
            isequal(varargin{1}{1},ros.slros.internal.bus.VarLenArrayTruncationAction.EmitWarning)
        diag = MSLDiagnostic([], ...
                             message('ros:slros:busconvert:TruncatedArray', ...
                                     'accelerations', msgIn.MessageType, maxlength, max(recvdlength), maxlength, varargin{2}));
        reportAsWarning(diag);
    end
    slBusOut.accelerations_SL_Info.ReceivedLength = uint32(recvdlength);
    slBusOut.accelerations_SL_Info.CurrentLength = uint32(currentlength);
    for iter=1:currentlength
        slBusOut.accelerations(iter) = bus_conv_fcns.ros2.msgToBus.geometry_msgs.Twist(msgIn.accelerations(iter),slBusOut(1).accelerations(iter),varargin{:});
    end
    currentlength = length(slBusOut.time_from_start);
    for iter=1:currentlength
        slBusOut.time_from_start(iter) = bus_conv_fcns.ros2.msgToBus.builtin_interfaces.Duration(msgIn.time_from_start(iter),slBusOut(1).time_from_start(iter),varargin{:});
    end
    slBusOut.time_from_start = bus_conv_fcns.ros2.msgToBus.builtin_interfaces.Duration(msgIn.time_from_start,slBusOut(1).time_from_start,varargin{:});
end
