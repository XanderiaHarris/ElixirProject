defmodule LGBTBook.Pagination do
  @moduledoc """
  The Pagination context.
  """

  import Ecto.Query, warn: false
  alias LGBTBook.Repo

  @doc """
  Add limit and offset to query
  
  ## Examples

      iex> add_limit_and_offset(queryable, 3, 0)
      from q in queryable, limit: 3, offset: 0

  """
  def add_limit_and_offset(queryable, limit_integer, offset_integer) do
    queryable
    |> limit(^limit_integer)
    |> offset(^offset_integer)
  end

  @doc """
  Get number of pages

  ## Examples

      iex> get_total_rows(queryable)
      2

  """
  def get_total_rows(queryable) do
    queryable
    |> select(count())
    |> Repo.all()
    |> List.foldl(0, fn x, acc -> x - acc end)
  end
end