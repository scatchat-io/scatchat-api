defmodule ScatChatWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :scat_chat

  socket "/socket", ScatChatWeb.UserSocket,
    websocket: true,
    longpoll: false

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  # TODO: The following two plugs are probably unecessary,
  # we should remove them once we've finalized our plug
  # pipeline.
  plug Plug.MethodOverride
  plug Plug.Head

  plug ScatChatWeb.Router
end
