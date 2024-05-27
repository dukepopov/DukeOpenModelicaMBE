model RLCircuit
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-68, -46}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 1)  annotation(
    Placement(transformation(origin = {4, 32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 100)  annotation(
    Placement(transformation(origin = {-38, 32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage annotation(
    Placement(transformation(origin = {-68, -12}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(resistor.p, sineVoltage.p) annotation(
    Line(points = {{-48, 32}, {-68, 32}, {-68, -2}}, color = {0, 0, 255}));
  connect(resistor.n, inductor.p) annotation(
    Line(points = {{-28, 32}, {-6, 32}}, color = {0, 0, 255}));
  connect(inductor.n, sineVoltage.n) annotation(
    Line(points = {{14, 32}, {14, -22}, {-68, -22}}, color = {0, 0, 255}));
  connect(ground.p, sineVoltage.n) annotation(
    Line(points = {{-68, -36}, {-68, -22}}, color = {0, 0, 255}));

annotation(
    uses(Modelica(version = "4.0.0")));
end RLCircuit;
