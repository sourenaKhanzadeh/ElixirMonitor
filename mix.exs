defmodule ElixirMonitor.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_monitor,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 2.0.0"},
      {:ecto, "~> 3.9.4"},
      {:logger_json, "~> 5.1.2"},
      {:ex_machina, "~> 2.7.0"}
    ]
  end
end

