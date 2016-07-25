defmodule Webgrader.Router do
  use Webgrader.Web, :router

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

  scope "/", Webgrader do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/problems", Webgrader do
    pipe_through :browser

    get "/", ProblemController, :list
    get "/:id", ProblemController, :show
  end

  scope "/submissions", Webgrader do
    pipe_through :browser

    get "/", SubmissionController, :list
    get "/:id", SubmissionController, :show
    
    post "/", SubmissionController, :create
    post "/:id/delete", SubmissionController, :delete
  end

  # Other scopes may use custom stacks.
  # scope "/api", Webgrader do
  #   pipe_through :api
  # end
end
