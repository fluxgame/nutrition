# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :nutrition,
  ecto_repos: [Nutrition.Repo]

# Configures the endpoint
config :nutrition, NutritionWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "o/7QNdWRpwNXyGmY76OQqXwW74qzUev//z78r3zZNMulCQf11lEG+NKPcbU+HUGi",
  render_errors: [view: NutritionWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Nutrition.PubSub,
  live_view: [signing_salt: "YDVIDuJc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
