defmodule Stash.PostController do
  use Stash.Web, :controller

  # alias to Post
  alias Stash.Post

  @spec show(Plug.Conn.t , Map) :: Plug.Conn.t
  def show(conn, %{"id" => id}) do
    post = Repo.get!(Post, id)
    render conn, "show.json", post: post
  end

  @spec index(Plug.Conn.t , Map) :: Plug.Conn.t
  def index(conn, _params) do
    posts = Repo.all(Post)
    render conn, "index.json", posts: posts
  end
end
