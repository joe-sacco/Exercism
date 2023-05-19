defmodule LogLevel do
  def to_label(log_code, legacy?) do
    log_label_list = [:trace, :debug, :info, :warning, :error, :fatal, :unknown]
    log_label = Enum.at(log_label_list, log_code)
    if Enum.at(log_label_list, log_code) in log_label_list == false do
      :unknown
    else
    if legacy? == false and log_code == 0 do
      :unknown
    end
    if legacy? == false and log_code == 5 do
      :unknown
    end
      Enum.at(log_label_list, log_code)
    end
  end

  def alert_recipient(log_code, legacy?) do
    # recipients = [:ops, :dev1, :dev2]
    # IO.puts("🟡🟡🟡🟡🟡🟡🟡🟡", LogLevel.to_label(log_code, legacy?))
    if LogLevel.to_label(log_code, legacy?) == :error or LogLevel.to_label(log_code, legacy?) == :fatal do
      :ops
    end
    if LogLevel.to_label(log_code, legacy?) == :uknown and legacy? == true do
      :dev1
    end
    if LogLevel.to_label(log_code, legacy?) == :uknown and legacy? == false do
      :dev2
    end
  end
end
