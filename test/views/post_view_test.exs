defmodule Stash.PostViewTest do
  use Stash.ModelCase

  import Stash.Factory

  alias Stash.PostView

  test "post_json" do
    post = insert(:post)

    rendered_post = PostView.post_json(post)

    assert rendered_post == %{
      title: post.title,
      source: post.source,
      origin: post.origin,
      inserted_at: post.inserted_at,
      updated_at: post.updated_at
    }
  end

  test "index.json" do
    post = insert(:post)

    rendered_posts = PostView.render("index.json", %{posts: [post]})

    assert rendered_posts == %{
      posts: [PostView.post_json(post)]
    }
  end

  test "show.json" do
    post = insert(:post)

    rendered_post = PostView.render("show.json", %{post: post})

    assert rendered_post == %{
      post: PostView.post_json(post)
    }
  end
end
