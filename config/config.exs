# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :staticformio,
  ecto_repos: [Staticformio.Repo]

# Configures the endpoint
config :staticformio, Staticformio.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "y0pdABCLS26kuUTb6CCwlgxaA5UFL53TwXRR+8M9G7TgOkhlKMldRYrBemFZ4Mlq",
  render_errors: [view: Staticformio.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Staticformio.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configure Guardian
config :guardian, Guardian,
  issuer: "Statiformio",
  ttl: { 30, :days },
  allowed_drift: 2000,
  verify_issuer: true,
  secret_key: 'lBVmtXx2oZn1j+nz4tj0Ernq3OL2m8BwJ9ljhjSulewyVeLNPoWoLtqEEsYQnPpr',
  serializer: Staticformio.GuardianSerializer


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
