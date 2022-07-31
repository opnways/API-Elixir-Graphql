defmodule ApiGqlWeb.Schema.Resolvers.ChatResolver do

  alias ApiGql.Chat

  def get_all_rooms(_,_, %{context: _context}) do
    rooms = Chat.list_rooms()
    {:ok, rooms}
  end
end
