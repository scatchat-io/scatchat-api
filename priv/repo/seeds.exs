# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Scatchat.Repo.insert!(%Scatchat.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Scatchat.Repo

alias Scatchat.Accounts.User

Repo.insert!(%User{email: "phoenix@example.com"})
