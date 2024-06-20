model CartesianRobot
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-84, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.Body body(m = 1) annotation(
    Placement(transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(s(start = 1))  annotation(
    Placement(transformation(origin = {-18, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant constant1(k = 1) annotation(
    Placement(transformation(origin = {-32, -24}, extent = {{-40, 60}, {-20, 80}})));
equation
  connect(prismatic.frame_b, body.frame_a) annotation(
    Line(points = {{-8, 0}, {20, 0}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram);
end CartesianRobot;
