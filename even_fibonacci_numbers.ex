defmodule EvenFibonacchiNumbers do
  require Integer

  @maxnumber 4000000

  def run do
    _fib_stream()
    |> Enum.take_while(fn(x) -> _is_max(x) end)
    |> Enum.filter(fn(x) -> Integer.is_even(x) end)
    |> Enum.sum
  end

  defp _fib_stream do
    Stream.iterate({1, 1}, &({ elem(&1, 1), elem(&1, 0) + elem(&1, 1)}))
    |> Stream.map(&(elem(&1, 0)))
  end

  defp _is_max x do
    x < @maxnumber
  end
end
