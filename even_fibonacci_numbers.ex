defmodule EvenFibonacchiNumbers do
  import Integer
  
  @maxnumber 4000000

  def run do
    _run(0, 1, 0, [true, false])
  end

  defp _run(_, _, sum, [false, _]), do: sum
  defp _run(n, m, sum, [true, false]) do
    fib = n+m
    _run(m, fib, sum, [@maxnumber > fib, is_even(fib+m)])
  end
  defp _run(n, m, sum, [true, _]) do
    fib = n+m
    _run(m, fib, sum+fib, [@maxnumber > fib, is_even(fib+m)])
  end
end
