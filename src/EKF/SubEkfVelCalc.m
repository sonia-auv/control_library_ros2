function xk = SubEkfVelCalc(x, inputs)
% Tiny velocity stabilizer EKF - state transition
%
% State:
%   x = [v_n(3); b_a(3)]
%
% Input:
%   u = a_lin_n (linear accel in nav frame)
%
% dt = sample time

% --- unpack input ---
dt = inputs(1);

% --- unpack state ---
accel = x(1:3);     % acceleration [m/s^2]
ba = x(4:6);        % accel bias residual [m/s^2]
v = x(7:9);         % velocity [m/s]

% --- predict ---
vx  = v + (accel - ba) * dt;

% bias is modeled as random walk (constant in f)
ba = ba;

% --- repack state ---
xk = [accel; ba; vx];

end
