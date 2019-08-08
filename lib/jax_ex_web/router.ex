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
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/" do
    pipe_through :api

    forward "/api", Absinthe.Plug, schema: JaxExWeb.Schema

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: JaxExWeb.Schema,
      interface: :simple
  end
end
