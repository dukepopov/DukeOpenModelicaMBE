model zdfsfdf
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute annotation(
    Placement(transformation(origin = {0, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder string annotation(
    Placement(transformation(origin = {0, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.MultiBody.Parts.PointMass ball annotation(
    Placement(transformation(origin = {0, -40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.Fixed ground annotation(
    Placement(transformation(origin = {0, 56}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(string.frame_a, ball.frame_a) annotation(
    Line(points = {{0, -24}, {0, -40}}, color = {95, 95, 95}));
  connect(revolute.frame_a, string.frame_b) annotation(
    Line(points = {{0, 10}, {0, -4}}, color = {95, 95, 95}));
  connect(ground.frame_b, revolute.frame_b) annotation(
    Line(points = {{0, 46}, {0, 30}}, color = {95, 95, 95}));

annotation(
    uses(Modelica(version = "4.0.0")));
end zdfsfdf;
