defmodule Stash.Router do
  use Stash.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Stash do
    pipe_through :api

    resources "/posts", PostController, only: [:index, :show, :create]
  end

  scope "/", Stash do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Stash do
  #   pipe_through :api
  # end
end
