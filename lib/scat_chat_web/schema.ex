defmodule ScatChatWeb.Schema do
  use Absinthe.Schema
  import_types ScatChatWeb.Schema.AccountsTypes

  alias ScatChatWeb.Resolvers

  query do
    @desc "Get all Users"
    field :users, list_of(:user) do
      resolve &Resolvers.Accounts.list_users/3
    end
  end
end
