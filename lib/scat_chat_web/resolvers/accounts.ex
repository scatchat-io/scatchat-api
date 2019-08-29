defmodule ScatChatWeb.Resolvers.Accounts do
  @moduledoc """
  This module defines all resolvers used by our Accounts
  context.
  """

  def list_users(_parent, _args, _resolution) do
    {:ok, ScatChat.Accounts.list_users()}
  end
end
