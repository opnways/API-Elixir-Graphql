defmodule ApiGqlWeb.Schema do
  use Absinthe.Schema

  import_types(ApiGqlWeb.Schema.Types)

  alias ApiGqlWeb.Schema.Resolvers

  @desc "query"
  query do
    field :hello, :string do
      resolve(fn _, _, _ -> {:ok, "world"} end)
    end
    @desc "All Rooms"
    field :rooms, list_of(:chat_type) do
      resolve(&Resolvers.ChatResolver.get_all_rooms/3)
    end
  end
end
