defmodule Phxws.Repo.Migrations.CreateTransporterVehicle do
  use Ecto.Migration

  def change do
    alter table(:vehicles) do
      add :transporter_id, references(:transporters)
    end
  end
end
