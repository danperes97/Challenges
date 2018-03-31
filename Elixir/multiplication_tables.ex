defmodule MultiplicationTables do
  def build(number) do
    Enum.reduce(1..10, [], fn(n, acc) -> acc ++ str_maker(number, n) end)
  end

  defp str_maker(number, n), do: ["#{number}x#{n}": n * number]
end
