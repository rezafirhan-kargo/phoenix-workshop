defmodule Phxws.TransportersTest do
  use Phxws.DataCase

  alias Phxws.Transporters

  describe "transporters" do
    alias Phxws.Transporters.Transporter

    import Phxws.TransportersFixtures

    @invalid_attrs %{name: nil, status: nil}

    test "list_transporters/0 returns all transporters" do
      transporter = transporter_fixture()
      assert Transporters.list_transporters() == [transporter]
    end

    test "get_transporter!/1 returns the transporter with given id" do
      transporter = transporter_fixture()
      assert Transporters.get_transporter!(transporter.id) == transporter
    end

    test "create_transporter/1 with valid data creates a transporter" do
      valid_attrs = %{name: "some name", status: "some status"}

      assert {:ok, %Transporter{} = transporter} = Transporters.create_transporter(valid_attrs)
      assert transporter.name == "some name"
      assert transporter.status == "some status"
    end

    test "create_transporter/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Transporters.create_transporter(@invalid_attrs)
    end

    test "update_transporter/2 with valid data updates the transporter" do
      transporter = transporter_fixture()
      update_attrs = %{name: "some updated name", status: "some updated status"}

      assert {:ok, %Transporter{} = transporter} = Transporters.update_transporter(transporter, update_attrs)
      assert transporter.name == "some updated name"
      assert transporter.status == "some updated status"
    end

    test "update_transporter/2 with invalid data returns error changeset" do
      transporter = transporter_fixture()
      assert {:error, %Ecto.Changeset{}} = Transporters.update_transporter(transporter, @invalid_attrs)
      assert transporter == Transporters.get_transporter!(transporter.id)
    end

    test "delete_transporter/1 deletes the transporter" do
      transporter = transporter_fixture()
      assert {:ok, %Transporter{}} = Transporters.delete_transporter(transporter)
      assert_raise Ecto.NoResultsError, fn -> Transporters.get_transporter!(transporter.id) end
    end

    test "change_transporter/1 returns a transporter changeset" do
      transporter = transporter_fixture()
      assert %Ecto.Changeset{} = Transporters.change_transporter(transporter)
    end
  end
end
