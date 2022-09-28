defmodule Scatchat.Repo do
  use Ecto.Repo,
    otp_app: :scatchat,
    adapter: Ecto.Adapters.Postgres
end
