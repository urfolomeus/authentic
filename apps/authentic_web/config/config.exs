# Since configuration is shared in umbrella projects, this file
# should only configure the :authentic_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :authentic_web,
  ecto_repos: [Authentic.Repo],
  generators: [context_app: :authentic]

# Configures the endpoint
config :authentic_web, AuthenticWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fZwmwkLS+L49rz1LQBtJa587YrFcgZWk5QaNkKRdRc2Zl9s/pgMUCqI4+++gjs8c",
  render_errors: [view: AuthenticWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AuthenticWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
