defmodule EvenFibonacchiNumbers do
  def run do
    sum = _run(0, 1, 0)
    IO.puts sum
  end

  defp _run(n, m, sum) do
    if 4000000 > n+m do
      _run(m, n+m, sum+n+m)
    else
      sum
    end
  end

end
