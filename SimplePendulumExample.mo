model asadasd
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-66, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true)  annotation(
    Placement(transformation(origin = {-8, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.Body body(m = 1.0, r_CM = {0.5, 0, 0})  annotation(
    Placement(transformation(origin = {46, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 0.1)  annotation(
    Placement(transformation(origin = {-8, 28}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(world.frame_b, revolute.frame_a) annotation(
    Line(points = {{-56, -2}, {-18, -2}}, color = {95, 95, 95}));
  connect(revolute.frame_b, body.frame_a) annotation(
    Line(points = {{2, -2}, {36, -2}}, color = {95, 95, 95}));
  connect(damper.flange_a, revolute.support) annotation(
    Line(points = {{-18, 28}, {-14, 28}, {-14, 8}}));
  connect(damper.flange_b, revolute.axis) annotation(
    Line(points = {{2, 28}, {-8, 28}, {-8, 8}}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end asadasd;
