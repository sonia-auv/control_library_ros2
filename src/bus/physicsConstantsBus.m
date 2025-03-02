function physicsConstantsBus() 
% PHYSICSCONSTANTSBUS initializes a set of bus objects in the MATLAB base workspace 

% Bus object: C10 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'OV';
elems(1).Dimensions = [1 13];
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'MV';
elems(2).Dimensions = [1 8];
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'MVR';
elems(3).Dimensions = [1 8];
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

C10 = Simulink.Bus;
C10.HeaderFile = '';
C10.Description = '';
C10.DataScope = 'Auto';
C10.Alignment = -1;
C10.PreserveElementDimensions = 0;
C10.Elements = elems;
clear elems;
assignin('base','C10', C10);

% Bus object: C11 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'OV';
elems(1).Dimensions = [1 13];
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'MV';
elems(2).Dimensions = [1 8];
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'MVR';
elems(3).Dimensions = [1 8];
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

C11 = Simulink.Bus;
C11.HeaderFile = '';
C11.Description = '';
C11.DataScope = 'Auto';
C11.Alignment = -1;
C11.PreserveElementDimensions = 0;
C11.Elements = elems;
clear elems;
assignin('base','C11', C11);

% Bus object: C19 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'OV';
elems(1).Dimensions = [1 13];
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'MV';
elems(2).Dimensions = [1 8];
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'MVR';
elems(3).Dimensions = [1 8];
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

C19 = Simulink.Bus;
C19.HeaderFile = '';
C19.Description = '';
C19.DataScope = 'Auto';
C19.Alignment = -1;
C19.PreserveElementDimensions = 0;
C19.Elements = elems;
clear elems;
assignin('base','C19', C19);

% Bus object: Defaut 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'OV';
elems(1).Dimensions = [1 13];
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'MV';
elems(2).Dimensions = [1 8];
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'MVR';
elems(3).Dimensions = [1 8];
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

Defaut = Simulink.Bus;
Defaut.HeaderFile = '';
Defaut.Description = '';
Defaut.DataScope = 'Auto';
Defaut.Alignment = -1;
Defaut.PreserveElementDimensions = 0;
Defaut.Elements = elems;
clear elems;
assignin('base','Default', Defaut);

% Bus object: Gains 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'predefined';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'Default';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'c10';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'C10';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'c11';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'C11';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'c19';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'C19';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'noDvl';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'NoDvl';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'p';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'double';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'm';
elems(7).Dimensions = 1;
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'double';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

elems(8) = Simulink.BusElement;
elems(8).Name = 'tmax';
elems(8).Dimensions = 1;
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'double';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = '';

elems(9) = Simulink.BusElement;
elems(9).Name = 'tmin';
elems(9).Dimensions = 1;
elems(9).DimensionsMode = 'Fixed';
elems(9).DataType = 'double';
elems(9).Complexity = 'real';
elems(9).Min = [];
elems(9).Max = [];
elems(9).DocUnits = '';
elems(9).Description = '';

Gains = Simulink.Bus;
Gains.HeaderFile = '';
Gains.Description = '';
Gains.DataScope = 'Auto';
Gains.Alignment = -1;
Gains.PreserveElementDimensions = 0;
Gains.Elements = elems;
clear elems;
assignin('base','Gains', Gains);

% Bus object: NoDvl 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'MV';
elems(1).Dimensions = [1 8];
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

NoDvl = Simulink.Bus;
NoDvl.HeaderFile = '';
NoDvl.Description = '';
NoDvl.DataScope = 'Auto';
NoDvl.Alignment = -1;
NoDvl.PreserveElementDimensions = 0;
NoDvl.Elements = elems;
clear elems;
assignin('base','NoDvl', NoDvl);

% Bus object: TargetReached 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'linearTol';
elems(1).Dimensions = [1 1];
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'angularTol';
elems(2).Dimensions = [1 1];
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'timeInTol';
elems(3).Dimensions = [1 1];
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

TargetReached = Simulink.Bus;
TargetReached.HeaderFile = '';
TargetReached.Description = '';
TargetReached.DataScope = 'Auto';
TargetReached.Alignment = -1;
TargetReached.PreserveElementDimensions = 0;
TargetReached.Elements = elems;
clear elems;
assignin('base','TargetReached', TargetReached);

% Bus object: mpcParams 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'gains';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'Gains';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'targetReached';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'TargetReached';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

mpcParams = Simulink.Bus;
mpcParams.HeaderFile = '';
mpcParams.Description = '';
mpcParams.DataScope = 'Auto';
mpcParams.Alignment = -1;
mpcParams.PreserveElementDimensions = 0;
mpcParams.Elements = elems;
clear elems;
assignin('base','mpcParams', mpcParams);

% Bus object: physicsConstants 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'rho';
elems(1).Dimensions = [1 1];
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'g';
elems(2).Dimensions = [1 1];
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'mass';
elems(3).Dimensions = [1 1];
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'volume';
elems(4).Dimensions = [1 1];
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'sub_height';
elems(5).Dimensions = [1 1];
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'double';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'rg';
elems(6).Dimensions = [1 3];
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'double';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'rb';
elems(7).Dimensions = [1 3];
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'double';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

elems(8) = Simulink.BusElement;
elems(8).Name = 'cdl';
elems(8).Dimensions = [1 6];
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'double';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = '';

elems(9) = Simulink.BusElement;
elems(9).Name = 'cdq';
elems(9).Dimensions = [1 6];
elems(9).DimensionsMode = 'Fixed';
elems(9).DataType = 'double';
elems(9).Complexity = 'real';
elems(9).Min = [];
elems(9).Max = [];
elems(9).DocUnits = '';
elems(9).Description = '';

elems(10) = Simulink.BusElement;
elems(10).Name = 'added_mass';
elems(10).Dimensions = [1 6];
elems(10).DimensionsMode = 'Fixed';
elems(10).DataType = 'double';
elems(10).Complexity = 'real';
elems(10).Min = [];
elems(10).Max = [];
elems(10).DocUnits = '';
elems(10).Description = '';

elems(11) = Simulink.BusElement;
elems(11).Name = 'I';
elems(11).Dimensions = [1 9];
elems(11).DimensionsMode = 'Fixed';
elems(11).DataType = 'double';
elems(11).Complexity = 'real';
elems(11).Min = [];
elems(11).Max = [];
elems(11).DocUnits = '';
elems(11).Description = '';

elems(12) = Simulink.BusElement;
elems(12).Name = 'depth_pose';
elems(12).Dimensions = [1 3];
elems(12).DimensionsMode = 'Fixed';
elems(12).DataType = 'double';
elems(12).Complexity = 'real';
elems(12).Min = [];
elems(12).Max = [];
elems(12).DocUnits = '';
elems(12).Description = '';

elems(13) = Simulink.BusElement;
elems(13).Name = 'hydro_pose';
elems(13).Dimensions = [1 3];
elems(13).DimensionsMode = 'Fixed';
elems(13).DataType = 'double';
elems(13).Complexity = 'real';
elems(13).Min = [];
elems(13).Max = [];
elems(13).DocUnits = '';
elems(13).Description = '';

elems(14) = Simulink.BusElement;
elems(14).Name = 'sonar_pose';
elems(14).Dimensions = [1 3];
elems(14).DimensionsMode = 'Fixed';
elems(14).DataType = 'double';
elems(14).Complexity = 'real';
elems(14).Min = [];
elems(14).Max = [];
elems(14).DocUnits = '';
elems(14).Description = '';

elems(15) = Simulink.BusElement;
elems(15).Name = 'dvl_rotation';
elems(15).Dimensions = [1 3];
elems(15).DimensionsMode = 'Fixed';
elems(15).DataType = 'double';
elems(15).Complexity = 'real';
elems(15).Min = [];
elems(15).Max = [];
elems(15).DocUnits = '';
elems(15).Description = '';

elems(16) = Simulink.BusElement;
elems(16).Name = 'thrusters';
elems(16).Dimensions = [8 6];
elems(16).DimensionsMode = 'Fixed';
elems(16).DataType = 'double';
elems(16).Complexity = 'real';
elems(16).Min = [];
elems(16).Max = [];
elems(16).DocUnits = '';
elems(16).Description = '';

elems(17) = Simulink.BusElement;
elems(17).Name = 'dvl_lost_override';
elems(17).Dimensions = [1 1];
elems(17).DimensionsMode = 'Fixed';
elems(17).DataType = 'double';
elems(17).Complexity = 'real';
elems(17).Min = [];
elems(17).Max = [];
elems(17).DocUnits = '';
elems(17).Description = '';

physicsConstants = Simulink.Bus;
physicsConstants.HeaderFile = '';
physicsConstants.Description = '';
physicsConstants.DataScope = 'Auto';
physicsConstants.Alignment = -1;
physicsConstants.PreserveElementDimensions = 0;
physicsConstants.Elements = elems;
clear elems;
assignin('base','physicsConstants', physicsConstants);

