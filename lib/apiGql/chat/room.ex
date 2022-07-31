defmodule ApiGql.Chat.Room do
  use Ecto.Schema
  import Ecto.Changeset

  schema "rooms" do
    field :name, :string
    field :users, :string

    timestamps()
  end

  @doc false
  def changeset(room, attrs) do
    room
    |> cast(attrs, [:name, :users])
    |> validate_required([:name, :users])
    |> unique_constraint(:name)
  end
end
