defmodule Stash.Factory do
  use ExMachina.Ecto, repo: Stash.Repo

  def post_factory do
    %Stash.Post{
      title: "Building and testing a Phoenix JSON API",
      source: "https://robots.thoughtbot.com/building-a-phoenix-json-api",
      origin: "https://robots.thoughtbot.com"
    }
  end
end
