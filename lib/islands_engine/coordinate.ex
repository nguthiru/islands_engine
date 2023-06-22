defmodule IslandsEngine.Coordinate do
  alias __MODULE__
  @board_range 1..10

  @enforce_keys [:row,:column]
  defstruct [:row, :column]

  def new(row,col) when row in @board_range and col in @board_range do
    {:ok, %Coordinate{row: row, column: col}}
  end

  def new(_row,_col) do
    {:error, "Invalid coordinate"}
  end

end
