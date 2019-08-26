defmodule ScatChatWeb.Resolvers.AccountsTest do
  use ScatChat.DataCase

  import ScatChat.Factory

  alias ScatChatWeb.Resolvers.Accounts

  describe "users" do
    test "list_users/3 returns all users" do
      insert(:user)
      assert Accounts.list_users(nil, nil, nil) == {:ok, ScatChat.Accounts.list_users()}
    end
  end
end
