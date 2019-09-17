defmodule JaxExWeb.Router do
  use JaxExWeb, :router

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

  scope "/", JaxExWeb do
    pipe_through [:browser, JaxExWeb.Plugs.Guest]

    resources "/register", UserController, only: [:create, :new]
    get "/login", SessionController, :new
    post "/login", SessionController, :create
  end

  scope "/", JaxExWeb do
    pipe_through [:browser, JaxExWeb.Plugs.Auth]

    delete "/logout", SessionController, :delete

    get "/", PageController, :index
  end
end
