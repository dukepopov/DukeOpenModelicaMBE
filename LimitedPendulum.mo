model LimitedPendulum
  extends Modelica.Icons.Example;

  inner Modelica.Mechanics.MultiBody.World world;
equation 
  // Connect the revolute joint
  connect(revolute1.frame_a, world.frame_b);
  connect(revolute1.frame_b, boxBody1.frame_a);
  
  // Measure the angle using the sensor
  connect(angleSensor.phi, revolute1.phi);

  // Limit the angle using conditional statements
  if angleSensor.phi <= -1.5707963267949 then
    revolute1.tau = maxTorque - dampingTorque * (angleSensor.phi + 1.5707963267949); // Apply a torque to stop the motion or apply damping
  elseif angleSensor.phi >= 1.5707963267949 then
    revolute1.tau = -maxTorque + dampingTorque * (angleSensor.phi - 1.5707963267949); // Apply a torque to stop the motion or apply damping
  else
    revolute1.tau = 0; // No torque applied if within limits
  end if;

  annotation (
    experiment(StopTime=3),
    uses(Modelica(version="4.0.0")));
end LimitedPendulum;
