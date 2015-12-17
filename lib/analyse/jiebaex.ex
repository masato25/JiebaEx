defmodule Analyse.JiebaEEx do

  @stopingword ","

  def init() do
    #pending
  end

  @doc """
  cut/1
  輸入字, 程式會自動將你的字詞做切割\n
  ex.
    cut(“這是測試”) => [["這","是","測","試"]]
  """
  def cut(sentence) do
    sentence |> String.split(",") |> Enum.map(&String.codepoints(&1))
  end

  @doc """
  DAG/1
  將文字做暴力破解取出match的結果
  """
  def DAG(sentence_set) do
    words_set = []
    for sentence <- sentence_set do
      for s <- sentence do
        IO.puts(s)
      end
    end
  end
end
