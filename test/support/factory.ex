defmodule ScatChat.Factory do
  use ExMachina.Ecto, repo: ScatChat.Repo

  def user_factory do
    %ScatChat.Accounts.User{
      email: sequence(:email, &"email-#{&1}@example.com")
    }
  end
end
