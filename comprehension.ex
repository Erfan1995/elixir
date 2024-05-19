defmodule Comprehension do
  #import Ineger module to use is_even function
  import Integer

  #Nested loop
  def print_starss(list) do
    for n <- list, times <- 1 .. n do
      String.duplicate("*", times)
    end
  end

  #Map loop
  def map_com do
    map = %{"a" => "A", "b" => "B", "c" => "C"}
    for {k, _v} <- map, do: k
  end

  #String loop
  def binary_comp(string) do
    for <<c <- string>>, do: <<c>>
  end

  #loop with pattern matching
  def pattern_comp do
    keyword_list = [ok: "Hello", error: "Unknown", ok: "World"]
    for {:ok, value} <- keyword_list, do: value
  end

  #filter through loop
  def filter_comp do
    for x <- 1..10, is_even(x), do: x
  end

  #muliple filters through loop
  def multiple_filter_comp do
    for x <- 1..100, is_even(x), rem(x,3)=== 0, do: x
  end

  #using into to change one collectable to another
  #ex: converting keyword list to map
  def into_comp do
    list = [one: 1, two: 2]
    for {k,v} <- list, into: %{}, do: {k,v}

  end

end
