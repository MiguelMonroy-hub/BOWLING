defmodule Bowling do
  def score([]), do: 0

  def score([[10, b1, b2]]), do: 10 + b1 + b2

  def score([[f, s, nil]]), do: f + s

  def score([[f, _] | others]) when f == 10 do
    10 + strike_bonus(others) + score(others)
  end

  def score([[f, s] | others]) when f + s == 10 do
    10 + spare_bonus(others) + score(others)
  end

  def score([[f, s] | others]) do
    f + s + score(others)
  end

defp strike_bonus([[10, _] | [[f | _] | _]]), do: 10 + f

defp strike_bonus([[10, b1, b2]]), do: b1 + b2

defp strike_bonus([[f, s] | _]), do: f + s

defp spare_bonus([[f | _] | _]), do: f
end
