class MoonLanding
 parameter Real force1 = 36350;
 parameter Real force2 = 1308;
protected
 parameter Real thrustEndTime = 210;
 parameter Real thrustDecreaseTime = 43.2;
public
 Rocket apollo(name="apollo13");
 CelestialBody moon(name="moon",mass=7.382e22,radius=1.738e6);
equation
 apollo.thrust = if (time < thrustDecreaseTime) then force1
 else if (time < thrustEndTime) then force2
 else 0;
 apollo.gravity=moon.g*moon.mass/(apollo.altitude+moon.radius)^2;
end MoonLanding;
