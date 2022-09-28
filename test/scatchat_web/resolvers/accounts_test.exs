defmodule ScatchatWeb.Resolvers.AccountsTest do
  use Scatchat.DataCase

  import Scatchat.Factory

  alias ScatchatWeb.Resolvers.Accounts

  describe "users" do
    test "list_users/3 returns all users" do
      insert(:user)
      assert Accounts.list_users(nil, nil, nil) == {:ok, Scatchat.Accounts.list_users()}
    end
  end
end
