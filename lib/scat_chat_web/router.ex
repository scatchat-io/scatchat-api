defmodule ScatChatWeb.Router do
  use ScatChatWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ScatChatWeb do
    pipe_through :api

    get "/hello", HelloController, :index
  end
end
