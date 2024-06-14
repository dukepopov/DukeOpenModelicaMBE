model newmodel
  Modelica.Mechanics.Rotational.Sources.Position position annotation(
    Placement(transformation(origin = {4, 26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Move move annotation(
    Placement(transformation(origin = {4, -22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sources.Position position1 annotation(
    Placement(transformation(origin = {-38, 68}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForce linearSpeedDependentForce annotation(
    Placement(transformation(origin = {-58, 14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Forces.Torque torque annotation(
    Placement(transformation(origin = {52, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.RevolutePlanarLoopConstraint revolute annotation(
    Placement(transformation(origin = {-74, -38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Constraints.Revolute constraint annotation(
    Placement(transformation(origin = {12, -60}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(world.frame_b, rev.frame_a) annotation(
    Line(points = {{-60, 0}, {-40, 0}}, color = {95, 95, 95}, thickness = 0.5));
annotation(
    uses(Modelica(version = "4.0.0")));
end newmodel;
