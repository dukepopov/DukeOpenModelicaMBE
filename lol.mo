model lol
  inner Modelica.Mechanics.MultiBody.World world(n = {0, 0, -1}, animateGround = true) annotation(
    Placement(transformation(origin = {-84, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sources.Position position annotation(
    Placement(transformation(origin = {-50, 48}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true) annotation(
    Placement(transformation(origin = {-44, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = true, r = {0.1, 0.1, 0.1}) annotation(
    Placement(transformation(origin = {-14, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine(f = 1) annotation(
    Placement(transformation(origin = {-84, 48}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {1, 0, 0})  annotation(
    Placement(transformation(origin = {18, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic1(useAxisFlange = true, n = {0, 1, 0}) annotation(
    Placement(transformation(origin = {52, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine1(amplitude = 1, f = 10) annotation(
    Placement(transformation(origin = {18, 46}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sources.Position position1 annotation(
    Placement(transformation(origin = {48, 46}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.Body body(m = 1)  annotation(
    Placement(transformation(origin = {82, -2}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(prismatic.frame_b, fixedTranslation.frame_a) annotation(
    Line(points = {{-34, -2}, {-24, -2}}, color = {95, 95, 95}));
  connect(prismatic.frame_a, world.frame_b) annotation(
    Line(points = {{-54, -2}, {-74, -2}}, color = {95, 95, 95}));
  connect(position.flange, prismatic.axis) annotation(
    Line(points = {{-40, 48}, {-36, 48}, {-36, 4}}, color = {0, 127, 0}));
  connect(sine.y, position.s_ref) annotation(
    Line(points = {{-73, 48}, {-63, 48}}, color = {0, 0, 127}));
  connect(bodyShape.frame_a, fixedTranslation.frame_b) annotation(
    Line(points = {{8, -2}, {-4, -2}}, color = {95, 95, 95}));
  connect(prismatic1.frame_a, bodyShape.frame_b) annotation(
    Line(points = {{42, -2}, {28, -2}}, color = {95, 95, 95}));
  connect(sine1.y, position1.s_ref) annotation(
    Line(points = {{29, 46}, {35, 46}}, color = {0, 0, 127}));
  connect(position1.flange, prismatic1.axis) annotation(
    Line(points = {{58, 46}, {60, 46}, {60, 4}}, color = {0, 127, 0}));
  connect(body.frame_a, prismatic1.frame_b) annotation(
    Line(points = {{72, -2}, {62, -2}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end lol;
