defmodule ScatchatWeb.Schema do
  @moduledoc """
  This contains the graphql schema used by Absinthe.
  """

  use Absinthe.Schema
  import_types(ScatchatWeb.Schema.AccountsTypes)

  alias ScatchatWeb.Resolvers

  query do
    @desc "Get all Users"
    field :users, list_of(:user) do
      resolve(&Resolvers.Accounts.list_users/3)
    end
  end
end
