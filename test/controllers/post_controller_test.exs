defmodule Stash.PostControllerTest do
  use Stash.ConnCase

  alias Stash.PostView

  test "#create adds a new post" do

  end

  test "#index renders a list of posts" do
    conn = build_conn()
    post = insert(:post)

    full_conn = get conn, post_path(conn, :index)

    assert json_response(full_conn, 200) == render_json(PostView, "index.json", posts: [post])
  end

  test "#show renders a post" do
    conn = build_conn()
    post = insert(:post)

    full_conn = get conn, post_path(conn, :show, post)

    assert json_response(full_conn, 200) == render_json(PostView, "show.json", post: post)
  end
end
