model trapezoid
  Modelica.Blocks.Sources.Trapezoid trapezoid(period = 1.0, nperiod = -1)  annotation(
    Placement(transformation(origin = {18, 72}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain(k = 20)  annotation(
    Placement(transformation(origin = {-24, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(transformation(origin = {60, 40}, extent = {{-10, 10}, {10, -10}}, rotation = -180)));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor annotation(
    Placement(transformation(origin = {60, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.Rotational.Sources.Torque torque(useSupport = true)  annotation(
    Placement(transformation(origin = {-56, -34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 0.1)  annotation(
    Placement(transformation(origin = {-16, -34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.SpringDamper springDamper(c = 100, d = 3)  annotation(
    Placement(transformation(origin = {16, -34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 0.3)  annotation(
    Placement(transformation(origin = {48, -34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 4)  annotation(
    Placement(transformation(origin = {46, -66}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(transformation(origin = {0, -86}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(trapezoid.y, feedback.u1) annotation(
    Line(points = {{30, 72}, {68, 72}, {68, 40}}, color = {0, 0, 127}));
  connect(feedback.y, gain.u) annotation(
    Line(points = {{51, 40}, {-12, 40}}, color = {0, 0, 127}));
  connect(gain.y, torque.tau) annotation(
    Line(points = {{-35, 40}, {-80, 40}, {-80, -34}, {-68, -34}}, color = {0, 0, 127}));
  connect(speedSensor.w, feedback.u2) annotation(
    Line(points = {{60, 18}, {60, 32}}, color = {0, 0, 127}));
  connect(torque.flange, inertia.flange_a) annotation(
    Line(points = {{-46, -34}, {-26, -34}}));
  connect(inertia.flange_b, springDamper.flange_a) annotation(
    Line(points = {{-6, -34}, {6, -34}}));
  connect(springDamper.flange_b, inertia1.flange_a) annotation(
    Line(points = {{26, -34}, {38, -34}}));
  connect(inertia1.flange_b, speedSensor.flange) annotation(
    Line(points = {{58, -34}, {60, -34}, {60, -4}}));
  connect(damper.flange_b, speedSensor.flange) annotation(
    Line(points = {{56, -66}, {60, -66}, {60, -4}}));
  connect(damper.flange_a, torque.support) annotation(
    Line(points = {{36, -66}, {-56, -66}, {-56, -44}}));
  connect(fixed.flange, damper.flange_a) annotation(
    Line(points = {{0, -86}, {0, -66}, {36, -66}}));

annotation(
    uses(Modelica(version = "4.0.0")));
end trapezoid;
