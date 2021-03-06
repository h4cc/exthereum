defmodule Exthereum.Mixfile do
  use Mix.Project

  def project do
    [app: :exthereum,
     version: "0.1.0",
     elixir: "~> 1.4",
     maintainers: ["Alan Wilhelm"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/alanwilhelm/exthereum"},
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger],
     mod: {Exthereum.Application, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:httpoison, "~> 0.11.1"},
     {:poison, "~> 3.0"},
     {:hexate,  ">= 0.6.0"},
     {:dialyxir, "~> 0.5", only: [:dev], runtime: false}
   ]
  end
end
