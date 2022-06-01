defmodule Phxws.VehiclesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Phxws.Vehicles` context.
  """

  @doc """
  Generate a vehicle.
  """
  def vehicle_fixture(attrs \\ %{}) do
    {:ok, vehicle} =
      attrs
      |> Enum.into(%{
        status: "some status",
        vehicle_plate: "some vehicle_plate"
      })
      |> Phxws.Vehicles.create_vehicle()

    vehicle
  end
end
