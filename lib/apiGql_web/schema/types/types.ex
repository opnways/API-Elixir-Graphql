defmodule ApiGqlWeb.Schema.Types do
  use Absinthe.Schema.Notation

  import_types(ApiGqlWeb.Schema.Types.ChatType)
end
