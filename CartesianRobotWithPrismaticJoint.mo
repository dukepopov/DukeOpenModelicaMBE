model CartesianRobotWithPrismaticJoint
    // Import necessary components directly
    import Modelica.Mechanics.MultiBody.World;
    import Modelica.Mechanics.MultiBody.Parts.Prismatic;
    import Modelica.Mechanics.MultiBody.Visualizers.Parts.Shape;

    // Components
    World world;
    Prismatic prismatic;
    Shape shape; // Example graphical body

equation
    // Equations
    connect(prismatic.frame_b, shape.frame_a);

    // Apply a force or displacement to the prismatic joint
    prismatic.force = if time < 1 then 100 else -100; // Example force applied for 1 second

end CartesianRobotWithPrismaticJoint;
