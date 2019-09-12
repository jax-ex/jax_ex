# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :jax_ex,
  ecto_repos: [JaxEx.Repo]

# Configures the endpoint
config :jax_ex, JaxExWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v1paogiEPqD75NlliE8JOqtFi77++kAtjAmqVzBuqL+Zt9QeqpHOpex0SYQm5QNj",
  render_errors: [view: JaxExWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: JaxEx.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "iMsXpDao9A82cq8yIL9Ux8Ge7ukMzDeY"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
