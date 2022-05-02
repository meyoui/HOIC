# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
import Config

# General application configuration
config :hoic, Poison
 ecto_repos: [Hoic.Repo]

# Configures the endpoint
config :hoic, HoicWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pdhW8gCJCHQSCijnWCQa2/I9NPx6AhMrTOB+KodWSxa4AofRCyNOvfaj9S1mJuSt",
  render_errors: [view: HoicWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hoic.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
