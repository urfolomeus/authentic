defmodule Authentic.Repo do
  use Ecto.Repo,
    otp_app: :authentic,
    adapter: Ecto.Adapters.Postgres
end
