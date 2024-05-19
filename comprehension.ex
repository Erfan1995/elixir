defmodule Comprehension do

  #Nested loop
  def print_starss(list) do
    for n <- list, times <- 1 .. n do
      String.duplicate("*", times)
    end
  end

  #Map loop
  def map_com() do
    map = %{"a" => "A", "b" => "B", "c" => "C"}
    for {k, v} <- map, do: k
  end

  #String loop
  def binary_comp(string) do
    for <<c <- string>>, do: <<c>>
  end

  #loop with pattern matching
  def pattern_comp() do
    keyword_list = [ok: "Hello", error: "Unknown", ok: "World"]
    for {:ok, value} <- keyword_list, do: value
  end

end
