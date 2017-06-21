use Mix.Config

# Configure your database
config :cci2_ex, Cci2Ex.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "cci2_ex_dev",
  hostname: "localhost",
  pool_size: 10
