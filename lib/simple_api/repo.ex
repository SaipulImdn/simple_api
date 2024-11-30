defmodule SimpleApi.Repo do
  use Ecto.Repo,
    otp_app: :simple_api,
    adapter: Ecto.Adapters.Postgres
end
