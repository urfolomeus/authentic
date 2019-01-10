defmodule AuthenticWeb.Router do
  use AuthenticWeb, :router

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

  scope "/", AuthenticWeb do
    pipe_through :browser

    get "/", SignupController, :new
  end

  # Other scopes may use custom stacks.
  # scope "/api", AuthenticWeb do
  #   pipe_through :api
  # end
end
