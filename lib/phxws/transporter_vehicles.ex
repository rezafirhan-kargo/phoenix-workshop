defmodule Phxws.TransporterVehicles do
  @moduledoc """
  The TransporterVehicles context.
  """

  import Ecto.Query, warn: false
  alias Phxws.Repo

  alias Phxws.TransporterVehicles.TransporterVehicle

  @doc """
  Returns the list of transporter_vehicle.

  ## Examples

      iex> list_transporter_vehicle()
      [%TransporterVehicle{}, ...]

  """
  def list_transporter_vehicle do
    Repo.all(TransporterVehicle)
  end

  @doc """
  Gets a single transporter_vehicle.

  Raises `Ecto.NoResultsError` if the Transporter vehicle does not exist.

  ## Examples

      iex> get_transporter_vehicle!(123)
      %TransporterVehicle{}

      iex> get_transporter_vehicle!(456)
      ** (Ecto.NoResultsError)

  """
  def get_transporter_vehicle!(id), do: Repo.get!(TransporterVehicle, id)

  @doc """
  Creates a transporter_vehicle.

  ## Examples

      iex> create_transporter_vehicle(%{field: value})
      {:ok, %TransporterVehicle{}}

      iex> create_transporter_vehicle(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_transporter_vehicle(attrs \\ %{}) do
    %TransporterVehicle{}
    |> TransporterVehicle.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a transporter_vehicle.

  ## Examples

      iex> update_transporter_vehicle(transporter_vehicle, %{field: new_value})
      {:ok, %TransporterVehicle{}}

      iex> update_transporter_vehicle(transporter_vehicle, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_transporter_vehicle(%TransporterVehicle{} = transporter_vehicle, attrs) do
    transporter_vehicle
    |> TransporterVehicle.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a transporter_vehicle.

  ## Examples

      iex> delete_transporter_vehicle(transporter_vehicle)
      {:ok, %TransporterVehicle{}}

      iex> delete_transporter_vehicle(transporter_vehicle)
      {:error, %Ecto.Changeset{}}

  """
  def delete_transporter_vehicle(%TransporterVehicle{} = transporter_vehicle) do
    Repo.delete(transporter_vehicle)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking transporter_vehicle changes.

  ## Examples

      iex> change_transporter_vehicle(transporter_vehicle)
      %Ecto.Changeset{data: %TransporterVehicle{}}

  """
  def change_transporter_vehicle(%TransporterVehicle{} = transporter_vehicle, attrs \\ %{}) do
    TransporterVehicle.changeset(transporter_vehicle, attrs)
  end
end
