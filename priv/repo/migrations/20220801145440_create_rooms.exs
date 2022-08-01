defmodule ApiGql.Repo.Migrations.CreateRooms do
  use Ecto.Migration

  def change do
    create table(:rooms) do
      add :name, :integer
      add :users, {:array, :integer}

      timestamps()
    end
  end
end
