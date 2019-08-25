defmodule ScatChatWeb.RouterTest do
  @moduledoc """
  This includes basic integration tests for our routes. Note
  that we are not testing each individual Absinthe resolver
  here, as they do not require integration tests.
  """

  use ScatChatWeb.ConnCase

  import ScatChat.Factory

  test "/graphql", context do
    user = insert(:user)

    query = """
      {
        users {
          id,
          email
        }
      }
      """

      res = context.conn
        |> post("/graphql", %{ "query" => "query users #{query}" })

      [user_json] = json_response(res, 200)["data"]["users"]

      assert user_json["id"] == to_string(user.id)
  end
end
