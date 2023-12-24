defmodule Dec19.Repo do
  use Ecto.Repo,
    otp_app: :dec19,
    adapter: Ecto.Adapters.Postgres
end
