defmodule FreelancerRates do
  @work_hours 8.0
  @work_days 22.0

  def daily_rate(hourly_rate), do: hourly_rate * @work_hours

  def apply_discount(before_discount, discount) do
    before_discount - (before_discount * (discount / 100))
  end

  def monthly_rate(hourly_rate, discount) do
    ceil(apply_discount(daily_rate(hourly_rate), discount) * @work_days)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    budget / (daily_rate(hourly_rate)|> apply_discount(discount))
    |> Float.floor(1)
  end
end
