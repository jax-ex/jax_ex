defmodule JaxEx.Repo do
  use Ecto.Repo,
    otp_app: :jax_ex,
    adapter: Ecto.Adapters.Postgres
end
