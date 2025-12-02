function slBusOut = Marker(msgIn, slBusOut, varargin)
%#codegen
%   Copyright 2021-2022 The MathWorks, Inc.
    currentlength = length(slBusOut.header);
    for iter=1:currentlength
        slBusOut.header(iter) = bus_conv_fcns.ros2.msgToBus.std_msgs.Header(msgIn.header(iter),slBusOut(1).header(iter),varargin{:});
    end
    slBusOut.header = bus_conv_fcns.ros2.msgToBus.std_msgs.Header(msgIn.header,slBusOut(1).header,varargin{:});
    slBusOut.ns_SL_Info.ReceivedLength = uint32(strlength(msgIn.ns));
    currlen  = min(slBusOut.ns_SL_Info.ReceivedLength, length(slBusOut.ns));
    slBusOut.ns_SL_Info.CurrentLength = uint32(currlen);
    slBusOut.ns(1:currlen) = uint8(char(msgIn.ns(1:currlen))).';
    slBusOut.id = int32(msgIn.id);
    slBusOut.type = int32(msgIn.type);
    slBusOut.action = int32(msgIn.action);
    currentlength = length(slBusOut.pose);
    for iter=1:currentlength
        slBusOut.pose(iter) = bus_conv_fcns.ros2.msgToBus.geometry_msgs.Pose(msgIn.pose(iter),slBusOut(1).pose(iter),varargin{:});
    end
    slBusOut.pose = bus_conv_fcns.ros2.msgToBus.geometry_msgs.Pose(msgIn.pose,slBusOut(1).pose,varargin{:});
    currentlength = length(slBusOut.scale);
    for iter=1:currentlength
        slBusOut.scale(iter) = bus_conv_fcns.ros2.msgToBus.geometry_msgs.Vector3(msgIn.scale(iter),slBusOut(1).scale(iter),varargin{:});
    end
    slBusOut.scale = bus_conv_fcns.ros2.msgToBus.geometry_msgs.Vector3(msgIn.scale,slBusOut(1).scale,varargin{:});
    currentlength = length(slBusOut.color);
    for iter=1:currentlength
        slBusOut.color(iter) = bus_conv_fcns.ros2.msgToBus.std_msgs.ColorRGBA(msgIn.color(iter),slBusOut(1).color(iter),varargin{:});
    end
    slBusOut.color = bus_conv_fcns.ros2.msgToBus.std_msgs.ColorRGBA(msgIn.color,slBusOut(1).color,varargin{:});
    currentlength = length(slBusOut.lifetime);
    for iter=1:currentlength
        slBusOut.lifetime(iter) = bus_conv_fcns.ros2.msgToBus.builtin_interfaces.Duration(msgIn.lifetime(iter),slBusOut(1).lifetime(iter),varargin{:});
    end
    slBusOut.lifetime = bus_conv_fcns.ros2.msgToBus.builtin_interfaces.Duration(msgIn.lifetime,slBusOut(1).lifetime,varargin{:});
    slBusOut.frame_locked = logical(msgIn.frame_locked);
    maxlength = length(slBusOut.points);
    recvdlength = length(msgIn.points);
    currentlength = min(maxlength, recvdlength);
    if (max(recvdlength) > maxlength) && ...
            isequal(varargin{1}{1},ros.slros.internal.bus.VarLenArrayTruncationAction.EmitWarning)
        diag = MSLDiagnostic([], ...
                             message('ros:slros:busconvert:TruncatedArray', ...
                                     'points', msgIn.MessageType, maxlength, max(recvdlength), maxlength, varargin{2}));
        reportAsWarning(diag);
    end
    slBusOut.points_SL_Info.ReceivedLength = uint32(recvdlength);
    slBusOut.points_SL_Info.CurrentLength = uint32(currentlength);
    for iter=1:currentlength
        slBusOut.points(iter) = bus_conv_fcns.ros2.msgToBus.geometry_msgs.Point(msgIn.points(iter),slBusOut(1).points(iter),varargin{:});
    end
    maxlength = length(slBusOut.colors);
    recvdlength = length(msgIn.colors);
    currentlength = min(maxlength, recvdlength);
    if (max(recvdlength) > maxlength) && ...
            isequal(varargin{1}{1},ros.slros.internal.bus.VarLenArrayTruncationAction.EmitWarning)
        diag = MSLDiagnostic([], ...
                             message('ros:slros:busconvert:TruncatedArray', ...
                                     'colors', msgIn.MessageType, maxlength, max(recvdlength), maxlength, varargin{2}));
        reportAsWarning(diag);
    end
    slBusOut.colors_SL_Info.ReceivedLength = uint32(recvdlength);
    slBusOut.colors_SL_Info.CurrentLength = uint32(currentlength);
    for iter=1:currentlength
        slBusOut.colors(iter) = bus_conv_fcns.ros2.msgToBus.std_msgs.ColorRGBA(msgIn.colors(iter),slBusOut(1).colors(iter),varargin{:});
    end
    slBusOut.texture_resource_SL_Info.ReceivedLength = uint32(strlength(msgIn.texture_resource));
    currlen  = min(slBusOut.texture_resource_SL_Info.ReceivedLength, length(slBusOut.texture_resource));
    slBusOut.texture_resource_SL_Info.CurrentLength = uint32(currlen);
    slBusOut.texture_resource(1:currlen) = uint8(char(msgIn.texture_resource(1:currlen))).';
    currentlength = length(slBusOut.texture);
    for iter=1:currentlength
        slBusOut.texture(iter) = bus_conv_fcns.ros2.msgToBus.sensor_msgs.CompressedImage(msgIn.texture(iter),slBusOut(1).texture(iter),varargin{:});
    end
    slBusOut.texture = bus_conv_fcns.ros2.msgToBus.sensor_msgs.CompressedImage(msgIn.texture,slBusOut(1).texture,varargin{:});
    maxlength = length(slBusOut.uv_coordinates);
    recvdlength = length(msgIn.uv_coordinates);
    currentlength = min(maxlength, recvdlength);
    if (max(recvdlength) > maxlength) && ...
            isequal(varargin{1}{1},ros.slros.internal.bus.VarLenArrayTruncationAction.EmitWarning)
        diag = MSLDiagnostic([], ...
                             message('ros:slros:busconvert:TruncatedArray', ...
                                     'uv_coordinates', msgIn.MessageType, maxlength, max(recvdlength), maxlength, varargin{2}));
        reportAsWarning(diag);
    end
    slBusOut.uv_coordinates_SL_Info.ReceivedLength = uint32(recvdlength);
    slBusOut.uv_coordinates_SL_Info.CurrentLength = uint32(currentlength);
    for iter=1:currentlength
        slBusOut.uv_coordinates(iter) = bus_conv_fcns.ros2.msgToBus.visualization_msgs.UVCoordinate(msgIn.uv_coordinates(iter),slBusOut(1).uv_coordinates(iter),varargin{:});
    end
    slBusOut.text_SL_Info.ReceivedLength = uint32(strlength(msgIn.text));
    currlen  = min(slBusOut.text_SL_Info.ReceivedLength, length(slBusOut.text));
    slBusOut.text_SL_Info.CurrentLength = uint32(currlen);
    slBusOut.text(1:currlen) = uint8(char(msgIn.text(1:currlen))).';
    slBusOut.mesh_resource_SL_Info.ReceivedLength = uint32(strlength(msgIn.mesh_resource));
    currlen  = min(slBusOut.mesh_resource_SL_Info.ReceivedLength, length(slBusOut.mesh_resource));
    slBusOut.mesh_resource_SL_Info.CurrentLength = uint32(currlen);
    slBusOut.mesh_resource(1:currlen) = uint8(char(msgIn.mesh_resource(1:currlen))).';
    currentlength = length(slBusOut.mesh_file);
    for iter=1:currentlength
        slBusOut.mesh_file(iter) = bus_conv_fcns.ros2.msgToBus.visualization_msgs.MeshFile(msgIn.mesh_file(iter),slBusOut(1).mesh_file(iter),varargin{:});
    end
    slBusOut.mesh_file = bus_conv_fcns.ros2.msgToBus.visualization_msgs.MeshFile(msgIn.mesh_file,slBusOut(1).mesh_file,varargin{:});
    slBusOut.mesh_use_embedded_materials = logical(msgIn.mesh_use_embedded_materials);
end
