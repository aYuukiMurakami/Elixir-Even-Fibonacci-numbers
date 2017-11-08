defmodule EvenFibonacchiNumbers do
  def run do
    sum = _run(0, 1, 0, [true, true])
    IO.puts sum
  end

  defp _run(n, m, sum, [false,_]), do: sum
  defp _run(n, m, sum, [true,_]) do
    _run(m, n+m, sum+n+m, [4000000 > n+m,true])
  end

end
