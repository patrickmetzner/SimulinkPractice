function acceleration = fcn(torque, velocity)

acceleration = (40.5*torque*0.7 - 413 - 0.3381*velocity^2)/2108;
