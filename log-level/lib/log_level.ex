defmodule LogLevel do
  def to_label(log_code, legacy?) do
    log_label_list = [:trace, :debug, :info, :warning, :error, :fatal, :unknown]
    log_label = Enum.at(log_label_list, log_code)
    if Enum.at(log_label_list, log_code) in log_label_list == false do
      :unknown
    else
      Enum.at(log_label_list, log_code)
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
  end
end
