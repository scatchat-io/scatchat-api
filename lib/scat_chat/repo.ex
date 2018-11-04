defmodule ScatChat.Repo do
  use Ecto.Repo,
    otp_app: :scat_chat,
    adapter: Ecto.Adapters.Postgres
end
