model trapezoid
  Modelica.Blocks.Sources.Trapezoid trapezoid(period = 1.0, nperiod = -1)  annotation(
    Placement(transformation(origin = {24, 80}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain(k = 20)  annotation(
    Placement(transformation(origin = {-18, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(transformation(origin = {66, 48}, extent = {{-10, 10}, {10, -10}}, rotation = -180)));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor annotation(
    Placement(transformation(origin = {66, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.Rotational.Sources.Torque torque(useSupport = true)  annotation(
    Placement(transformation(origin = {-50, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 0.1)  annotation(
    Placement(transformation(origin = {-10, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.SpringDamper springDamper(c = 100, d = 3)  annotation(
    Placement(transformation(origin = {22, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 0.3)  annotation(
    Placement(transformation(origin = {54, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 4)  annotation(
    Placement(transformation(origin = {52, -58}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(transformation(origin = {6, -78}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(trapezoid.y, feedback.u1) annotation(
    Line(points = {{35, 80}, {73, 80}, {73, 48}}, color = {0, 0, 127}));
  connect(feedback.y, gain.u) annotation(
    Line(points = {{57, 48}, {-6, 48}}, color = {0, 0, 127}));
  connect(gain.y, torque.tau) annotation(
    Line(points = {{-29, 48}, {-74, 48}, {-74, -26}, {-62, -26}}, color = {0, 0, 127}));
  connect(speedSensor.w, feedback.u2) annotation(
    Line(points = {{66, 25}, {66, 39}}, color = {0, 0, 127}));
  connect(torque.flange, inertia.flange_a) annotation(
    Line(points = {{-40, -26}, {-20, -26}}));
  connect(inertia.flange_b, springDamper.flange_a) annotation(
    Line(points = {{0, -26}, {12, -26}}));
  connect(springDamper.flange_b, inertia1.flange_a) annotation(
    Line(points = {{32, -26}, {44, -26}}));
  connect(inertia1.flange_b, speedSensor.flange) annotation(
    Line(points = {{64, -26}, {66, -26}, {66, 4}}));
  connect(damper.flange_b, speedSensor.flange) annotation(
    Line(points = {{62, -58}, {66, -58}, {66, 4}}));
  connect(damper.flange_a, torque.support) annotation(
    Line(points = {{42, -58}, {-50, -58}, {-50, -36}}));
  connect(fixed.flange, damper.flange_a) annotation(
    Line(points = {{6, -78}, {6, -58}, {42, -58}}));

annotation(
    uses(Modelica(version = "4.0.0")));
end trapezoid;
