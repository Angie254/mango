use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.

config :mango, MangoWeb.Endpoint,
  http: [port: 4001],
  #set server to run during test(changed value from false to true)
  server: true

#configure  Hound library to be used with Phantomjs to test our app in a browser
 config :hound, driver: "phantomjs"

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :mango, Mango.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "mango_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
