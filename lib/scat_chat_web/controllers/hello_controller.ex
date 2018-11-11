defmodule ScatChatWeb.HelloController do
  use ScatChatWeb, :controller

  def index(conn, _params) do
    text conn, "hello"
  end
end
