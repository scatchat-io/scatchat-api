defmodule ScatChat.Accounts.User do
  @moduledoc """
  This module contains the User schema and changeset definition.
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email])
    |> validate_required([:email])
  end
end
