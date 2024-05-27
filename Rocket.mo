class Rocket "rocket class"
   parameter String name;
   Real mass(start=1038.358);
   Real altitude(start= 59404);
   Real velocity(start= -2003);
   Real acceleration;
   Real thrust; // Thrust force on rocket
   Real gravity; // Gravity forcefield
   parameter Real massLossRate=0.000277;
equation
  (thrust-mass*gravity)/mass = acceleration;
  der(mass) = -massLossRate * abs(thrust);
  der(altitude) = velocity;
  der(velocity) = acceleration;
end Rocket;
