defmodule Algae.Mixfile do
  use Mix.Project

  def project do
    [
      app: :doma_algae,
      aliases: aliases(),
      deps: deps(),

      # Versions
      version: "1.3.0",
      elixir: "~> 1.9",

      # Docs
      name: "Algae",
      docs: docs(),

      # Hex
      description:
        "Bootstrapped algebraic data types for Elixir, forked by doma for maintenance and testing packagesets",
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
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:inch_ex, "~> 2.0", only: [:dev, :docs, :test], runtime: false},
      {:dialyxir, "~> 1.1", only: :dev, runtime: false},
      {:earmark, "~> 1.4", only: :dev, runtime: false},
      {:ex_doc, "~> 0.23", only: :dev, runtime: false},
      {:doma_quark, "2.3.2-doma2"},
      {:type_class, "~> 1.2"},
      {:doma_witchcraft, "~> 1.0.4-doma"}
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
      name: "doma_algae",
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => "https://github.com/doma-engineering/algae",
        "Upstream" => "https://github.com/witchcrafters/algae"
      },
      maintainers: ["doma.dev"]
    ]
  end
end
