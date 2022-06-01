defmodule Phxws.Vehicles.Vehicle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicles" do
    field :status, :string
    field :vehicle_plate, :string
    belongs_to :transporter, Phxws.Transporters.Transporter

    timestamps()
  end

  @doc false
  def changeset(vehicle, attrs) do
    vehicle
    |> cast(attrs, [:vehicle_plate, :status])
    |> validate_required([:vehicle_plate, :status])
  end
end
