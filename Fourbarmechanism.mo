model Fourbarmechanism
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-68, -68}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation b0(r = {1.2, 0, 0}, animation = false)  annotation(
    Placement(transformation(origin = {-28, -68}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder b1(r = {0, 0.5, 0.1}, diameter = 0.05)  annotation(
    Placement(transformation(origin = {-12, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder b2(r = {0, 0.2, 0}, diameter = 0.05)  annotation(
    Placement(transformation(origin = {38, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder b3(r = {-1, 0.3, 0.1}, diameter = 0.05)  annotation(
    Placement(transformation(origin = {26, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(n = {1, 0, 0}, w(start = 300))  annotation(
    Placement(transformation(origin = {-38, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1 annotation(
    Placement(transformation(origin = {56, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(n = {1, 0, 0})  annotation(
    Placement(transformation(origin = {-38, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute3(n = {0, 1, 0})  annotation(
    Placement(transformation(origin = {-12, 56}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute4 annotation(
    Placement(transformation(origin = {18, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute5(n = {0, 1, 0})  annotation(
    Placement(transformation(origin = {38, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(s(start = -0.2))  annotation(
    Placement(transformation(origin = {6, -68}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(world.frame_b, b0.frame_a) annotation(
    Line(points = {{-58, -68}, {-38, -68}}, color = {95, 95, 95}));
  connect(prismatic.frame_a, b0.frame_b) annotation(
    Line(points = {{-4, -68}, {-18, -68}}, color = {95, 95, 95}));
  connect(revolute.frame_a, world.frame_b) annotation(
    Line(points = {{-48, -26}, {-52, -26}, {-52, -68}, {-58, -68}}, color = {95, 95, 95}));
  connect(revolute.frame_b, b1.frame_a) annotation(
    Line(points = {{-28, -26}, {-12, -26}, {-12, 2}}, color = {95, 95, 95}));
  connect(b1.frame_b, revolute2.frame_b) annotation(
    Line(points = {{-12, 22}, {-12, 34}, {-28, 34}}, color = {95, 95, 95}));
  connect(revolute2.frame_a, revolute3.frame_a) annotation(
    Line(points = {{-48, 34}, {-56, 34}, {-56, 56}, {-22, 56}}, color = {95, 95, 95}));
  connect(revolute3.frame_b, revolute4.frame_a) annotation(
    Line(points = {{-2, 56}, {4, 56}, {4, 64}, {8, 64}}, color = {95, 95, 95}));
  connect(revolute4.frame_b, b3.frame_b) annotation(
    Line(points = {{28, 64}, {40, 64}, {40, 40}, {6, 40}, {6, 22}, {16, 22}}, color = {95, 95, 95}));
  connect(revolute1.frame_b, b3.frame_a) annotation(
    Line(points = {{66, 2}, {78, 2}, {78, 22}, {36, 22}}, color = {95, 95, 95}));
  connect(revolute5.frame_b, revolute1.frame_a) annotation(
    Line(points = {{38, -10}, {38, 2}, {46, 2}}, color = {95, 95, 95}));
  connect(b2.frame_b, revolute5.frame_a) annotation(
    Line(points = {{38, -38}, {38, -30}}, color = {95, 95, 95}));
  connect(b2.frame_a, prismatic.frame_b) annotation(
    Line(points = {{38, -58}, {38, -68}, {16, -68}}, color = {95, 95, 95}));

annotation(
    uses(Modelica(version = "4.0.0")));
end Fourbarmechanism;
