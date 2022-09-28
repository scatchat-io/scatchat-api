defmodule ScatchatWeb.Resolvers.Accounts do
  @moduledoc """
  This module defines all resolvers used by our Accounts
  context.
  """

  def list_users(_parent, _args, _resolution) do
    {:ok, Scatchat.Accounts.list_users()}
  end
end
