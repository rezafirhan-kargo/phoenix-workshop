defmodule Phxws.Transporters.Transporter do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transporters" do
    field :name, :string
    field :status, :string
    has_one :vehicle, Phxws.Vehicles.Vehicle

    timestamps()
  end

  @doc false
  def changeset(transporter, attrs) do
    transporter
    |> cast(attrs, [:name, :status])
    |> validate_required([:name, :status])
  end
end
