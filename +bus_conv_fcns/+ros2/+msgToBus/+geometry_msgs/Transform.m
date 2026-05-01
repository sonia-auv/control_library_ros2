function slBusOut = Transform(msgIn, slBusOut, varargin)
%#codegen
%   Copyright 2021-2022 The MathWorks, Inc.
    currentlength = length(slBusOut.translation);
    for iter=1:currentlength
        slBusOut.translation(iter) = bus_conv_fcns.ros2.msgToBus.geometry_msgs.Vector3(msgIn.translation(iter),slBusOut(1).translation(iter),varargin{:});
    end
    slBusOut.translation = bus_conv_fcns.ros2.msgToBus.geometry_msgs.Vector3(msgIn.translation,slBusOut(1).translation,varargin{:});
    currentlength = length(slBusOut.rotation);
    for iter=1:currentlength
        slBusOut.rotation(iter) = bus_conv_fcns.ros2.msgToBus.geometry_msgs.Quaternion(msgIn.rotation(iter),slBusOut(1).rotation(iter),varargin{:});
    end
    slBusOut.rotation = bus_conv_fcns.ros2.msgToBus.geometry_msgs.Quaternion(msgIn.rotation,slBusOut(1).rotation,varargin{:});
end
