use Mix.Config

config :el_kube,
  ecto_repos: [ElKube.Repo]

config :el_kube, ElKube.Repo,
  adapter: Ecto.Adapters.Postgres,
  pool_size: 10

config :el_kube, ElKubeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7Y16dU7bfRLkvhXLUqguPg7TK31MA4Axz22Sg0TMRjxCi3hdHcyyrpmigPpE3GBY",
  render_errors: [view: ElKubeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElKube.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "UQ+nJbfE"]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"
