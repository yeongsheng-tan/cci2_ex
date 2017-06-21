use Mix.Config

# Configure your database
config :cci2_ex, Cci2Ex.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "cci2_ex_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
