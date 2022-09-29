import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :scatchat, Scatchat.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "scatchat_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :scatchat, ScatchatWeb.Endpoint,
  http: [port: 4002],
  secret_key_base: "HiTjzwYxgC11NYR1o1M1uiLKdOHUXiPeUZ1SPXJp/zYCh6JAtBlsE79MM49sIPiX",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
