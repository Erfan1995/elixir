defmodule Guard  do

  def test(x) when  x < 0 do
    :negative
  end

  def test(x) when  x == 0 do
    :zero
  end

  def test(x) when  x > 0 and is_integer(x) do
    :positive
  end

  def smallest(list) when  length(list) > 0 do
    Enum.min(list)
  end

  def smallest(_), do: {:error, :invalid_argument}
end
