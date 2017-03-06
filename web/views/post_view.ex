defmodule Stash.PostView do
  use Stash.Web, :view

  @spec render(String.t, Map) :: Map
  def render("show.json", %{post: post}) do
    %{
      post: post_json(post)
    }
  end

  @spec render(String.t, list(Map)) :: Map
  def render("index.json", %{posts: posts}) do
    %{
      posts: Enum.map(posts, &post_json/1)
    }
  end

  @spec post_json(Map) :: Map
  def post_json(post) do
    %{
      title: post.title,
      source: post.source,
      origin: post.origin,
      inserted_at: post.inserted_at,
      updated_at: post.updated_at
    }
  end
end
