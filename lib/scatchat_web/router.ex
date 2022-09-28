defmodule ScatchatWeb.Router do
  use ScatchatWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/graphql" do
    pipe_through :api

    forward "/", Absinthe.Plug,
      schema: ScatchatWeb.Schema,
      json_codec: Jason
  end
end
