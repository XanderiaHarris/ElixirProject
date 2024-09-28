defmodule LGBTBook.MixProject do
  use Mix.Project

  def project do
    [
      app: :lgbtBook,
      version: "0.1.0",
      elixir: "~> 1.7",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {LGBTBook.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:absinthe, "~> 1.7.8"}, # Most up to date
      {:absinthe_plug, "~> 1.5.8"}, # Most up to date
      {:cowboy_telemetry, "~> 0.4.0"}, # Most up to date
      {:ecto_sql, "~> 3.12.0"}, # Most up to date
      {:gettext, "~> 0.26.1"}, # Most up to date
      {:jason, "~> 1.4.4"}, # Most up to date
      {:phoenix, "~> 1.7.14"}, # Most up to date
      {:phoenix_ecto, "~> 4.6.2"}, # Most up to date
      {:phoenix_live_dashboard, "~> 0.8.4"}, # Most up to date
      {:plug_cowboy, "~> 2.7.2"}, # Most up to date
      {:poison, "~> 6.0.0"}, # Most up to date
      {:postgrex, "~> 0.19.1"}, # Most up to date
      {:telemetry_metrics, "~> 1.0.0"}, # Most up to date
      {:telemetry_poller, "~> 1.1.0"} # Most up to date
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to install project dependencies and perform other setup tasks, run:
  #
  #     $ mix setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      setup: ["deps.get", "ecto.setup"],
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"]
    ]
  end
end
