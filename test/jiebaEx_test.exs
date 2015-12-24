defmodule JiebaExTest do
  use ExUnit.Case
  doctest JiebaEx

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "test cut" do
    alias Analyse.JiebaEEx
    temp_res = JiebaEEx.cut("這是測試")
    IO.inspect temp_res
    assert hd(temp_res) == ["這","是","測","試"]
  end

end
