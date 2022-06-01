defmodule PhxwsWeb.TransporterVehicleView do
  use PhxwsWeb, :view
  alias PhxwsWeb.TransporterVehicleView

  def render("index.json", %{transporter_vehicle: transporter_vehicle}) do
    %{data: render_many(transporter_vehicle, TransporterVehicleView, "transporter_vehicle.json")}
  end

  def render("show.json", %{transporter_vehicle: transporter_vehicle}) do
    %{data: render_one(transporter_vehicle, TransporterVehicleView, "transporter_vehicle.json")}
  end

  def render("transporter_vehicle.json", %{transporter_vehicle: transporter_vehicle}) do
    %{
      id: transporter_vehicle.id
    }
  end
end
