use Mix.Config

config :cci2_ex, ecto_repos: [Cci2Ex.Repo]

import_config "#{Mix.env}.exs"
