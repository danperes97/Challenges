defmodule Fatorial do
  def calculate(number) do
    1..number |> Enum.reduce(fn(n, acc) -> acc * n end)
  end
end
