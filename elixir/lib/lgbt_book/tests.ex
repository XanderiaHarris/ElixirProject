defmodule LGBTBook.Tests do
  @moduledoc """
  The Tests context
  """
  
  import Ecto.Query, warn: false
  alias LGBTBook.Repo
  alias LGBTBook.Pagination
  alias LGBTBook.Tests.Test

    @doc """
  Returns the list of tests

  ## Examples
    
      iex> list_tests([])
      [%Test{}, ...]
    
  """
  def list_tests() do
    query = from t in Test
    tests = Repo.all(query)
  end
end