# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :scat_chat,
  ecto_repos: [ScatChat.Repo]

# Configures the endpoint
config :scat_chat, ScatChatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "X838WxAdVuuBLjT6aLktvRKYlLCtTMe5cj0Kov1SnFkBWc83o9tFtOCA1SmTjy0B",
  render_errors: [view: ScatChatWeb.ErrorView, accepts: ~w(json)],
  pubsub_server: ScatChat.PubSub

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
