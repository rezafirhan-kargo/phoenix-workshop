defmodule Phxws.Repo do
  use Ecto.Repo,
    otp_app: :phxws,
    adapter: Ecto.Adapters.Postgres
end
