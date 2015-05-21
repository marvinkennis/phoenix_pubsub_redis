defmodule PhoenixPubsubRedis.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [app: :phoenix_pubsub_redis,
     version: @version,
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :redo, :poolboy]]
  end

  defp deps do
    [{:phoenix, path: "~/Workspace/projects/phoenix"},
     {:redo, github: "heroku/redo"},
     {:poolboy, "~> 1.5.1 or ~> 1.6"}]
  end
end