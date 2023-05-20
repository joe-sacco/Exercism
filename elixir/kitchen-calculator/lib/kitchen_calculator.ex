defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    {_, volume} = volume_pair
    volume
  end

  def to_milliliter(volume_pair) do
    {measure, volume} = volume_pair
    cond do
      measure == :milliliter -> {:milliliter, volume * 1}
      measure == :cup -> {:milliliter, volume * 240}
      measure == :fluid_ounce -> {:milliliter, volume * 30}
      measure == :teaspoon -> {:milliliter, volume * 5}
      measure == :tablespoon -> {:milliliter, volume * 15}
    end
  end

  def from_milliliter(volume_pair, unit) do
    {measure, volume} = volume_pair
    cond do
      unit == :milliliter -> {measure, volume / 1}
      unit == :cup -> {unit, volume / 240}
      unit == :fluid_ounce -> {unit, volume / 30}
      unit == :teaspoon -> {unit, volume / 5}
      unit == :tablespoon -> {unit, volume / 15}
    end
  end

  def convert(volume_pair, unit) do
    KitchenCalculator.to_milliliter(volume_pair)
    |> KitchenCalculator.from_milliliter(unit)
  end
end
