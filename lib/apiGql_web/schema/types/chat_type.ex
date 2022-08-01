defmodule ApiGqlWeb.Schema.Types.ChatType do
  use Absinthe.Schema.Notation

  object :chat_type do
    field :id, :string
    field :name, :string
    field :users, list_of(:integer)
    field :inserted_at, :string
  end
end
