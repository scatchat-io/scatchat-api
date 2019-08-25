defmodule ScatChatWeb.Router do
  use ScatChatWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/graphql" do
    pipe_through :api

    forward "/", Absinthe.Plug,
      schema: ScatChatWeb.Schema,
      json_codec: Jason
  end
end
