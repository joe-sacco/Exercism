defmodule Rules do
  def eat_ghost?(power_pellet_active, touching_ghost) do
    if power_pellet_active == true and touching_ghost == true do
      true
    else
      false
    end
  end

  def score?(touching_power_pellet, touching_dot) do
    if touching_power_pellet == true or touching_dot == true do
      true
    else
      false
    end
  end

  def lose?(power_pellet_active, touching_ghost) do
    if power_pellet_active == false and touching_ghost == true do
      true
    else
      false
    end
  end

  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    if lose?(power_pellet_active, touching_ghost) == false
    and has_eaten_all_dots == true do
      true
    else
      false
    end
  end
end
