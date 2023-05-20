defmodule LogLevel do
  def to_label(log_code, legacy?) do
    log_label_list = [:trace, :debug, :info, :warning, :error, :fatal, :unknown]
    log_label = Enum.at(log_label_list, log_code)
    cond do
      log_code > 5 -> :unknown
      legacy? == true and log_code == 0 -> :unknown
      legacy? == true and log_code == 5 -> :unknown
      true -> log_label
    end
  end

  def alert_recipient(log_code, legacy?) do
    label = LogLevel.to_label(log_code, legacy?)
    cond do
      label == :error or label == :fatal -> :ops
      legacy? == true and label == :unknown -> :dev1
      log_code > 5 -> :dev2
      true -> false
    end
  end
end
