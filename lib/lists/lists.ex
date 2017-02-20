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
    at(tail(list), index-1)
  end

  def any?([value | _], value), do: true
  def any?(list, value) do
    any?(tail(list), value)
  end
end
