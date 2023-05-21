defmodule Year do
  @spec leap_year?(non_neg_integer) :: boolean
  def leap_year?(year) do
    if rem(year, 4) === 0 do
      if rem(year, 100) == 0 do
        if rem(year, 400) == 0 do
          true
        else
          false
        end
      else
        true
      end
    else
      false
    end
  end
end
