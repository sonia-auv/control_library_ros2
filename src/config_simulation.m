%[text] ## Parameter simulation:
%[text] 
%[text] Select start location:
obstacle = "Gate" %[control:dropdown:6369]{"position":[12,18]}
%[text] 
if obstacle == "Gate"
    initial_pose = [-139 -142 -1];
    initial_angle = [0 0 pi/2];
elseif obstacle == "Slalom"
    initial_pose = [-141 -136 -1];
    initial_angle = [0 0 pi/2];
elseif obstacle == "Torpedo"
    initial_pose = [-139 -127.5 -1];
    initial_angle = [0 0 pi/4];
elseif obstacle == "Bin"
    initial_pose = [-142 -128 -1];
    initial_angle = [0 0 3*pi/4];
elseif obstacle == "Octogon"
    initial_pose = [-142 -128 -1];
    initial_angle = [0 0 pi/2];
end

% Area to define all constant relative to the submarine
CoB_simulation = [0.01,0.00,-0.24];

%Arm section
position_initial = [0,0,0];
orientation_initial = [0,pi/2,0];
%Definition of arm
% Considering the Length is the length to next joint
% roll,pitch,yaw are the axe of rotation of the joint at 100% PWM
% roll_init,pitch_init,yaw_init are define from the previous orientation;
%{{Length_x,Length_y,Length_z,roll_init,pitch_init,yaw_init,roll,pitch,yaw};...}
definition_arm = [[0.25,0,0,0,0,0,0,0,0];[0.25,0,0,0,-pi/2,0,0,pi,0]];
%[x,y,z,roll_init,pitch_init,yaw_init]
origin_arm = [0.425, -0.1, -0.1,0,-pi/2,0];
%Definition of gripper the gripper start to last joint end
orientation_grip = [0,0,0];
%Definition of gripper area of grip, just magnetize not calculation if you
%correctly grab for the moment
area_gripper = [0.1,0.1,0.1];


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline"}
%---
%[control:dropdown:6369]
%   data: {"defaultValue":"\"Gate\"","itemLabels":["Gate","Slalom","Torpedo","Bin","Octogon"],"items":["\"Gate\"","\"Slalom\"","\"Torpedo\"","\"Bin\"","\"Octogon\""],"label":"Start position","run":"Nothing"}
%---
