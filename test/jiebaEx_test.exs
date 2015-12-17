defmodule JiebaExTest do
  use ExUnit.Case
  doctest JiebaEx

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "test cut" do
    alias Analyse.JiebaEEx
    temp_res = JiebaEx.cut("這是測試")
    assert hd(temp_res) == ["這","是","測","試"]
  end

end
