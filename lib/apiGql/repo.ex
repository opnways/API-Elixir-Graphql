defmodule ApiGql.Repo do
  use Ecto.Repo,
    otp_app: :apiGql,
    adapter: Ecto.Adapters.Postgres
end
