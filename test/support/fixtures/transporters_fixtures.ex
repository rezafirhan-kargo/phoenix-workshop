defmodule Phxws.TransportersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Phxws.Transporters` context.
  """

  @doc """
  Generate a transporter.
  """
  def transporter_fixture(attrs \\ %{}) do
    {:ok, transporter} =
      attrs
      |> Enum.into(%{
        name: "some name",
        status: "some status"
      })
      |> Phxws.Transporters.create_transporter()

    transporter
  end
end
