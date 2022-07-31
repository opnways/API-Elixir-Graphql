defmodule ApiGqlWeb.Schema.Types.ChatType do
  use Absinthe.Schema.Notation

  object :chat_type do
    field :id, :string
    field :name, :string
    field :users, :string
    field :inserted_at, :string
  end
end
