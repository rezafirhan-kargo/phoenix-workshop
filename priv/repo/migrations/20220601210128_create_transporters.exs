defmodule Phxws.Repo.Migrations.CreateTransporters do
  use Ecto.Migration

  def change do
    create table(:transporters) do
      add :name, :string
      add :status, :string
      
      timestamps()
    end
  end
end
