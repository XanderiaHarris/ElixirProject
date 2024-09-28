defmodule LGBTBook.Repo do
  use Ecto.Repo,
    otp_app: :lgbtBook,
    adapter: Ecto.Adapters.Postgres
end
