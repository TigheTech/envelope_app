# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :envelope,
  ecto_repos: [Envelope.Repo]

# Configures the endpoint
config :envelope, EnvelopeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nZxIMUiSChy8XRAxWgH6E4ZlxY4wD3VzMlTgeIAQx6M7AopZDyAkPtd+KQec/okv",
  render_errors: [view: EnvelopeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Envelope.PubSub,
  live_view: [signing_salt: "7xHFWD3I"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
