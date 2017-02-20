defmodule Spikes.Lists do
  def head(list) do
    [h | _] = list
    h
  end

  def tail(list) do
    [_ | t] = list
    t
  end

  def at(list, 0), do: head(list)
  def at(list, index) do
    tail(list) |> at(index-1)
  end

  def any?([value | _], value), do: true
  def any?(list, value) do
    tail(list) |> any?(value)
  end

  def all?([value], value), do: true
  def all?(list, value) do
    all?([head(list)], value) && all?(tail(list), value)
  end
end
