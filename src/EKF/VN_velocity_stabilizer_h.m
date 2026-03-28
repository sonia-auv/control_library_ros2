function zhat = VN_velocity_stabilizer_h(x)
% states orentation(4), omega(3), accel(3), accel_bias(3), speed(3)

zhat = x([1:4 5:7 8:10]);
end
