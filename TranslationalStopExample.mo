model TranslationalStopExample
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(r = {1, 0, 0}, length = 1)  annotation(
    Placement(transformation(origin = {2, 60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true)  annotation(
    Placement(transformation(origin = {-32, 60}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(prismatic.frame_b, bodyBox.frame_a) annotation(
    Line(points = {{-22, 60}, {-8, 60}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end TranslationalStopExample;
