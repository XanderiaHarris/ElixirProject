# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lgbtBook,
  ecto_repos: [LGBTBook.Repo]

# Configures the endpoint
config :lgbtBook, LGBTBookWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+IjyxgEncWjAVS+ARMn8qUGkijbmXyEp7YTevKL+sfe0dcpJmaaeNXFW8j/By5i9",
  render_errors: [view: LGBTBookWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: LGBTBook.PubSub,
  live_view: [signing_salt: "4Ka1Trkx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
