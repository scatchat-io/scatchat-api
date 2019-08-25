defmodule ScatChatWeb.Resolvers.Accounts do
  def list_users(_parent, _args, _resolution) do
    {:ok, ScatChat.Accounts.list_users()}
  end
end
