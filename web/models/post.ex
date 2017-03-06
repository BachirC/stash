defmodule Stash.Post do
  @moduledoc """
    This module describes the structure of the Post model.
  """
  use Stash.Web, :model

  schema "posts" do
    field :title
    field :source
    field :origin

    timestamps()
  end
end
