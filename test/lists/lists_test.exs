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

  test "checks if value is present in the list" do
    assert Spikes.Lists.any?([1], 1) == true
    assert Spikes.Lists.any?([1, 2, 3], 2) == true
    assert Spikes.Lists.any?([1, 2, 3], 3) == true

    assert Spikes.Lists.any?([], 1) == false
    assert Spikes.Lists.any?([2], 1) == false
    assert Spikes.Lists.any?([2, 3], 1) == false
  end

  test "checks if all values in the list match a given value" do
    assert Spikes.Lists.all?([1], 1) == true
    assert Spikes.Lists.all?([1, 1], 1) == true
    assert Spikes.Lists.all?([1, 1, 1], 1) == true

    assert Spikes.Lists.all?([1, 1, 1, 2], 1) == false
    assert Spikes.Lists.all?([], 1) == false
  end
end
