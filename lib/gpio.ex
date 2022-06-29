defmodule Gpio do
  @moduledoc """
  Documentation for Gpio.
  """

  def test_gpio() do
    gpio_number = 49
    expected_label = "P9_23"
    {:ok, actual_label} = File.read("/sys/class/gpio/gpio#{gpio_number}/label")
    actual_label = String.trim(actual_label)

    if expected_label == actual_label do
      IO.puts(
        "PASS - Actual label (#{actual_label}) matches expected label (#{expected_label}) for GPIO #{gpio_number}"
      )
    else
      IO.puts(
        "FAIL - Actual label (#{actual_label}) does not match expected label (#{expected_label}) for GPIO #{gpio_number}"
      )
    end
  end
end
