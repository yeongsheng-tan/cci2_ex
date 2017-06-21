# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cci2_ex_web,
  namespace: Cci2Ex.Web,
  ecto_repos: [Cci2Ex.Repo]

# Configures the endpoint
config :cci2_ex_web, Cci2Ex.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bpOkZ7GicNbpY6shNufrDoUE4tEVoHig69PCqBVj55B+TiUXlVMRELyB6b4ExVXj",
  render_errors: [view: Cci2Ex.Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: Cci2Ex.Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :cci2_ex_web, :generators,
  context_app: :cci2_ex

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
