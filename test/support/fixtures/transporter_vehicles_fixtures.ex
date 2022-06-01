defmodule Phxws.TransporterVehiclesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Phxws.TransporterVehicles` context.
  """

  @doc """
  Generate a transporter_vehicle.
  """
  def transporter_vehicle_fixture(attrs \\ %{}) do
    {:ok, transporter_vehicle} =
      attrs
      |> Enum.into(%{

      })
      |> Phxws.TransporterVehicles.create_transporter_vehicle()

    transporter_vehicle
  end
end
