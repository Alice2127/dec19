defmodule Dec19 do
  @doc """
  Get the result of adding.

  ## Examples
      iex> Dec19.sum(1, 2)
      3

      iex> Dec19.sum(2, 3)
      5
  """
  def sum(a, b) do
    a + b
  end

  @doc """
  Get the result of adding and display.

  ## Examples
      iex> Dec19.display(1, 2)
      "add result: 3"

      iex> Dec19.display(2, 3)
      "add result: 5"

  """
  def display(a, b) do
    "add result: #{a + b}"
  end

  def display(_, _) do
    "Invalid input, both arguments must be numbers"
  end

end
