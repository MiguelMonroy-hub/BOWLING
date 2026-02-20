defmodule Bowling do
  def score([]), do: 0
  def score(game) do
    [frame|others] = game
    [f,s|_] = frame
    f + s + score(others)

  end
end
