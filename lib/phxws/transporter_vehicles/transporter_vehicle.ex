defmodule Phxws.TransporterVehicles.TransporterVehicle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transporter_vehicle" do


    timestamps()
  end

  @doc false
  def changeset(transporter_vehicle, attrs) do
    transporter_vehicle
    |> cast(attrs, [])
    |> validate_required([])
  end
end
