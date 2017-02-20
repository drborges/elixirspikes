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
  def at(list, index), do: tail(list) |> at(index-1)

  def any?([], _), do: false
  def any?([value | _], value), do: true
  def any?([_ | tail], value), do: any?(tail, value)

  def all?([value], value), do: true
  def all?([value | tail], value), do: all?(tail, value)
  def all?(_, _), do: false
end
