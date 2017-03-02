defmodule Stash.Factory do
  use ExMachina.Ecto, repo: Stash.Repo

  def post_factory do
    %Stash.Post{
    }
  end
end
