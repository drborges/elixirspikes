defmodule Spikes.ListsTest do
  use ExUnit.Case

  test "retrieves head of list" do
    assert Spikes.Lists.head([1, 2, 3]) == 1
  end

  test "retrieves tail of list" do
    assert Spikes.Lists.tail([1, 2, 3]) == [2, 3]
  end

  test "retrieves element at position" do
    assert Spikes.Lists.at([1, 2, 3], 0) == 1
    assert Spikes.Lists.at([1, 2, 3], 1) == 2
    assert Spikes.Lists.at([1, 2, 3], 2) == 3
  end
end
