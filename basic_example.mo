model basic_example
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-70, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(n = {0.2, 0, 0}, s(start = 0.2))  annotation(
    Placement(transformation(origin = {-36, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(r = {1, 0, 0})  annotation(
    Placement(transformation(origin = {4, -2}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(world.frame_b, prismatic.frame_a) annotation(
    Line(points = {{-60, -2}, {-46, -2}}, color = {95, 95, 95}));
  connect(prismatic.frame_b, bodyBox.frame_a) annotation(
    Line(points = {{-26, -2}, {-6, -2}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end basic_example;
