defmodule EvenFibonacciNumbers do
  require Integer

  @default_maxnumber 4000000

  @doc ~S"""
  EvenFibonacciNumbers.

  ## Examples
    # default
    iex> EvenFibonacciNumbers.run
    4613732

    # maxnumber value:40
    iex> EvenFibonacciNumbers.run(40)
    44

    # maxnumber value:-40
    iex> EvenFibonacciNumbers.run(-40)
    0
  """
  def run(max \\ @default_maxnumber) do
    _fib_stream()
    |> Enum.take_while(fn(x) -> x < max end)
    |> Enum.filter(fn(x) -> Integer.is_even(x) end)
    |> Enum.sum
  end

  defp _fib_stream do
    Stream.iterate({1, 1}, &({ elem(&1, 1), elem(&1, 0) + elem(&1, 1)}))
    |> Stream.map(&(elem(&1, 0)))
  end
end
