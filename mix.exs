defmodule Algae.Mixfile do
  use Mix.Project

  def project do
    [
      app: :algae,
      aliases: aliases(),
      deps: deps(),

      # Versions
      version: "1.3.0",
      elixir: "~> 1.9",

      # Docs
      name: "Algae",
      docs: docs(),

      # Hex
      description: "Bootstrapped algebraic data types for Elixir",
      package: package()
    ]
  end

  defp aliases do
    [
      quality: [
          "test",
          "credo --strict"
        ]
    ]
  end

  defp deps do
    [
      {:credo,       "~> 1.5",  only: [:dev, :test],        runtime: false},
      {:inch_ex,     "~> 2.0",  only: [:dev, :docs, :test], runtime: false},
      {:dialyxir,    "~> 1.1",  only: :dev,                 runtime: false},
      {:earmark,     "~> 1.4",  only: :dev,                 runtime: false},
      {:ex_doc,      "~> 0.23", only: :dev,                 runtime: false},

      {:quark, git: "https://github.com/witchcrafters/quark.git", ref: "b05a8a0"},
      {:type_class,  "~> 1.2"},
      {:witchcraft, git: "https://github.com/doma-engineering/witchcraft.git", ref: "9c31c75"},
    ]
  end

  defp docs do
    [
      extras: ["README.md"],
      logo: "./brand/mini-logo.png",
      main: "readme",
      source_url: "https://github.com/witchcrafters/algae"
    ]
  end

  defp package do
    [
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/witchcrafters/algae"},
      maintainers: ["Brooklyn Zelenka", "Steven Vandevelde"]
    ]
  end
end
