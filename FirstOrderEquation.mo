model FirstOrderSteady
  "First order equation with steady state initial condition"
  Real x "State variable";
initial equation
  der(x) = 2 "Initialize the system in steady state";
equation
  der(x) = 1-x "Drives value of x toward 1.0";
  annotation(experiment(StartTime=0, StopTime=30));
end FirstOrderSteady;

