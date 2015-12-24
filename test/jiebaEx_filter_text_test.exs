defmodule JiebaExFilterText do

  #@zh_chinese_range [[0x8140, 0xa0fe],[0xa140, 0xa3bf],[0xa3c0, 0xa3fe],[0xa440, 0xc67e],[0xc6a1, 0xc8fe],[0xc940, 0xf9d5],[0xf9d6, 0xfefe]]
  @zh_chinese_range [[0x5B8B, 0x4F53]]
  def checkexisting?(str) do
    str = to_char_list str
    str = hd(str)
    IO.puts str
    @zh_chinese_range |> Enum.map(fn x -> [b,e] = x; str >= b and str <= e end)
                      |> Enum.reduce(false, fn a,b -> a or b end) 
  end

end
defmodule JiebaExFilterTextTest do
  use ExUnit.Case
  doctest JiebaEx

  setup context_setup do
    #https://en.wikipedia.org/wiki/Big5
    zh_chinese_range = [[0x8140, 0xa0fe],[0xa140, 0xa3bf],[0xa3c0, 0xa3fe],[0xa440, 0xc67e],[0xc6a1, 0xc8fe],[0xc940, 0xf9d5],[0xf9d6, 0xfefe]]
    {:ok, zcr: zh_chinese_range }
  end
  
  test "test hello", context_setup do
    #context_setup[:zcr]
    assert JiebaExFilterText.checkexisting?("我") == true
    assert JiebaExFilterText.checkexisting?("a") == false
    assert JiebaExFilterText.checkexisting?("号") == false
  end

end
