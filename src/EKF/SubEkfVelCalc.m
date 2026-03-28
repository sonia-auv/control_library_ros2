function xk = SubEkfVelCalc(x, inputs)
% Tiny velocity stabilizer EKF - state transition
%
% State:
%   x = [orr_n(4); w_n(3); a_n(3); ba_n(3); v_n(3);]
%
% Input:
%   u = a_lin_n (linear accel in nav frame)
%
% dt = sample time

% --- unpack input ---
dt = inputs(1);

% --- unpack state ---
orien = x(1:4);     % orientation quaternion
omega = x(5:7);     % angular speed [rad/s]
accel = x(8:10);    % acceleration [m/s^2]
ba = x(11:13);      % accel bias residual [m/s^2]
v = x(14:16);       % velocity [m/s]

% --- predict ---
vx  = v + (accel - ba) * dt;

% bias is modeled as random walk (constant in f)
ba = ba;

% We don't modify the orientation or omega, let the covariance manage that.
orien = orien;
omega = omega;

% --- repack state ---
xk = [orien; omega; accel; ba; vx];

end
