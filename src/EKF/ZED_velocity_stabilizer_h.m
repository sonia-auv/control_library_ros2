function zhat = ZED_velocity_stabilizer_h(x)
% states orentation(4), omega(3), accel(3), accel_bias(3), speed(3)

zhat = x([5:7 8:10]);
end
