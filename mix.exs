defmodule XsltGame.Mixfile do
  use Mix.Project

  def project do
    [ app: :xslt_game,
      version: "0.0.1",
      elixir: "~> 0.10.2-dev",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
     mod: { XsltGame, [] },
     applications: [ :epg_pool ]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [{ :epg_pool, github: "couchemar/epg_pool" }]
  end
end
