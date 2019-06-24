defmodule TMS.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :tms,
      version: "0.6.0",
      elixir: "~> 1.7",
      description: "TMS Transport Management System",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :tms,
      links: %{"GitHub" => "https://github.com/enterprizing/tms"}
    ]
  end

  def application() do
    [mod: {:tms, []}]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
