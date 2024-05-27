
package Interfaces "Connectors and partial models"
  partial connector HeatPort "Thermal port for 1-dim. heat transfer"
    Modelica.SIunits.Temperature T "Port temperature";
    flow Modelica.SIunits.HeatFlowRate Q_flow
      "Heat flow rate (positive if flowing from outside into the component)";
  end HeatPort;

  connector HeatPort_a "Thermal port for 1-dim. heat transfer (filled rectangular icon)"
    extends HeatPort;
  end HeatPort_a;

  connector HeatPort_b "Thermal port for 1-dim. heat transfer (unfilled rectangular icon)"
    extends HeatPort;
  end HeatPort_b;
end Interfaces;
