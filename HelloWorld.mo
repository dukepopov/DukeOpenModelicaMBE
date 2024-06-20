model HelloWorld "A simple equation"
 Real x(start=2);
 parameter Real a = -1;
equation
 der(x)= a*x;
end HelloWorld;

