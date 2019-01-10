# Since configuration is shared in umbrella projects, this file
# should only configure the :authentic application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :authentic,
  ecto_repos: [Authentic.Repo]

import_config "#{Mix.env()}.exs"
