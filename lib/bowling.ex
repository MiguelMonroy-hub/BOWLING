defmodule Bowling do
  def score([]), do: 0
  def score([[f,s|_]|others]) do
    if f + s == 10 do
      nextframe = hd(others)
      t = hd(nextframe)
      f + s + t + score(others)
    else
      f + s + score(others)
    end
  end
end
