defmodule ScatchatWeb.Schema.AccountsTypes do
  @moduledoc """
  This module defines types for the Accounts objects we'll be
  exposing in Absinthe.
  """

  use Absinthe.Schema.Notation

  object :user do
    field :id, :id
    field :email, :string
  end
end
