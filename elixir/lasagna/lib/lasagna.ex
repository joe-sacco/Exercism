defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(actual_minutes) do
    expected_minutes_in_oven() - actual_minutes
  end

  def preparation_time_in_minutes(layers) do
    time_per_layer = 2
    layers * time_per_layer
  end

  def total_time_in_minutes(layers, minutes_in_oven) do
    preparation_time_in_minutes(layers) + minutes_in_oven
  end

  def alarm() do
    "Ding!"
  end
end
