model PendulumConstraint
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-66, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 0)  annotation(
    Placement(transformation(origin = {-20, 32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true, phi(fixed = true), w(fixed = true)) annotation(
    Placement(transformation(origin = {-18, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.Body body(m = 1, r_CM = {0.5, 0, 0})  annotation(
    Placement(transformation(origin = {22, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor annotation(
    Placement(transformation(origin = {-20, -28}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(world.frame_b, revolute.frame_a) annotation(
    Line(points = {{-56, 6}, {-28, 6}}, color = {95, 95, 95}));
  connect(revolute.support, damper.flange_a) annotation(
    Line(points = {{-24, 16}, {-30, 16}, {-30, 32}}));
  connect(revolute.axis, damper.flange_b) annotation(
    Line(points = {{-18, 16}, {-10, 16}, {-10, 32}}));
  connect(revolute.frame_b, body.frame_a) annotation(
    Line(points = {{-8, 6}, {12, 6}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end PendulumConstraint;
