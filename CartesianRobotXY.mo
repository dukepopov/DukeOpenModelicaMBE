model CartesianRobotXY
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-78, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(length = 2, width = 0.2, height = 0.2, r = {2, 0, 0})  annotation(
    Placement(transformation(origin = {-44, -2}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(world.frame_b, bodyBox.frame_a) annotation(
    Line(points = {{-68, -2}, {-54, -2}}, color = {95, 95, 95}));

annotation(
    uses(Modelica(version = "4.0.0")));
end CartesianRobotXY;
