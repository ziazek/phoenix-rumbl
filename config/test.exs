use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rumbl, Rumbl.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :rumbl, Rumbl.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "rumbl_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Configure comeonin library
config :comeonin, :bcrypt_log_rounds, 1
config :comeonin, :pbkdf2_rounds, 1

config  :rumbl, :wolfram,
        app_id: "1234", 
        http_client: Rumbl.InfoSys.Test.HTTPClient