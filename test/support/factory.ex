defmodule ScatChat.Factory do
  @moduledoc """
  This module defines factories for our various database objects
  for use in tests.
  """
  use ExMachina.Ecto, repo: ScatChat.Repo

  def user_factory do
    %ScatChat.Accounts.User{
      email: sequence(:email, &"email-#{&1}@example.com")
    }
  end
end
