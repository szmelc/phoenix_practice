# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "potS5F+P06ES19m5Ru5cPqgswHaNnKMH4FxKR9cTCvwD4K9Tpsy4xWKpyUbj6sHK",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :ueberauth, Ueberauth,
providers: [
  github: { Ueberauth.Strategy.Github, [default_scope: "user,public_repo"]}
]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "e865f78f46c2363ea105",
  client_secret: "c9579094b16ea0517410ebc2fe12f805a04ce448"
