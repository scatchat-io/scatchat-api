defmodule ScatChatWeb.ErrorHelpersTest do
  use ExUnit.Case, async: true

  import ScatChatWeb.ErrorHelpers

  test "translate error" do
    assert translate_error({"test message", %{}}) == "test message"
  end

  test "translate error with count" do
    assert translate_error({
      "test message with count",
      %{count: 5, random: 'stuff'}
    }) == "test message with count"
  end
end
