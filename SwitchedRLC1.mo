model SwitchedRLC
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 100)  annotation(
    Placement(transformation(origin = {10, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C = 0.001)  annotation(
    Placement(transformation(origin = {-14, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 1)  annotation(
    Placement(transformation(origin = {-48, 16}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage annotation(
    Placement(transformation(origin = {-70, -12}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-70, -44}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(stepVoltage.p, inductor.p) annotation(
    Line(points = {{-70, -2}, {-70, 16}, {-58, 16}}, color = {0, 0, 255}));
  connect(inductor.n, capacitor.n) annotation(
    Line(points = {{-38, 16}, {-14, 16}, {-14, 6}}, color = {0, 0, 255}));
  connect(resistor.n, inductor.n) annotation(
    Line(points = {{10, 6}, {10, 16}, {-38, 16}}, color = {0, 0, 255}));
  connect(stepVoltage.n, capacitor.p) annotation(
    Line(points = {{-70, -22}, {-14, -22}, {-14, -14}}, color = {0, 0, 255}));
  connect(resistor.p, stepVoltage.n) annotation(
    Line(points = {{10, -14}, {10, -22}, {-70, -22}}, color = {0, 0, 255}));
  connect(ground.p, stepVoltage.n) annotation(
    Line(points = {{-70, -34}, {-70, -22}}, color = {0, 0, 255}));

annotation(
    uses(Modelica(version = "4.0.0")));
end SwitchedRLC;
