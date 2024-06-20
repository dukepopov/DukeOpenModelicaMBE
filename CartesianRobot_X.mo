model CartesianRobot_X
    // Parameters
    parameter Real x_min = -500; // Minimum position of X-axis (mm)
    parameter Real x_max = 500;  // Maximum position of X-axis (mm)
    parameter Real initial_x = 0; // Initial position of X-axis (mm)

    // Continuous variable
    Real x(start = initial_x); // Position of X-axis (mm)
end CartesianRobot_X;
