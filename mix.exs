defmodule Kontackt.Mixfile do
  use Mix.Project

  def project do
    [
      app: :kontackt,
      version: "0.0.1",
      elixir: "~> 1.7.4",
      build_embeded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for information
  def application do
    [applications: [:httpoison, :poison]]
  end

  # Dependecies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  # 
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options

  defp deps do
    [
      {:httpoison, "~> 1.4"},
      {:poison, "~> 3.1"}
    ]
  end
end
