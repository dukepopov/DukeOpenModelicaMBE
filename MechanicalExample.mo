model MechanicalExample
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(
    J=0.4,
    phi(fixed=true, start=0),
    w(fixed=true, start=0)) annotation(
    Placement(transformation(origin = {-64, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper1(d = 0.2) annotation(
    Placement(transformation(origin = {-26, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Spring spring1(c = 11) annotation(
    Placement(transformation(origin = {-26, -32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia2(
    J=1,
    phi(fixed=true, start=1),
    w(fixed=true, start=0)) annotation(
    Placement(transformation(origin = {10, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper2(d = 1) annotation(
    Placement(transformation(origin = {44, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Spring spring2(c = 5) annotation(
    Placement(transformation(origin = {44, -32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(transformation(origin = {78, -16}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(inertia1.flange_b, damper1.flange_a) annotation(
    Line(points = {{-54, -14}, {-36, -14}, {-36, 2}}));
  connect(inertia1.flange_b, spring1.flange_a) annotation(
    Line(points = {{-54, -14}, {-36, -14}, {-36, -32}}));
  connect(spring1.flange_b, damper1.flange_b) annotation(
    Line(points = {{-16, -32}, {-16, 2}}));
  connect(inertia2.flange_a, spring1.flange_b) annotation(
    Line(points = {{0, -14}, {-16, -14}, {-16, -32}}));
  connect(inertia2.flange_b, damper2.flange_a) annotation(
    Line(points = {{20, -14}, {26, -14}, {26, 2}, {34, 2}}));
  connect(spring2.flange_a, inertia2.flange_b) annotation(
    Line(points = {{34, -32}, {26, -32}, {26, -14}, {20, -14}}));
  connect(spring2.flange_b, damper2.flange_b) annotation(
    Line(points = {{54, -32}, {62, -32}, {62, 2}, {54, 2}}));
  connect(damper2.flange_b, fixed.flange) annotation(
    Line(points = {{54, 2}, {62, 2}, {62, -16}, {78, -16}}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end MechanicalExample;
