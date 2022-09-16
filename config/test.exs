use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :scat_chat, ScatChatWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :scat_chat, ScatChat.Repo,
  username: "rzablit",
  # password: "postgres",
  database: "scat_chat_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
