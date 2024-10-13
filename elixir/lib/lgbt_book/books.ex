defmodule LGBTBook.Books do
@moduledoc """
Book queries
"""

import Ecto.Query, warn: false
alias LGBTBook.Repo
alias LGBTBook.Pagination
alias LGBTBook.Books.Book

    @doc """
    Returns the list of books

    ## Examples

    iex> list_books([])
    [%Book{}, ...]s

    """
    def list_books() do
        query = from b in Book
        books = Repo.all(query)
    end

    @doc """
        Find a boook by id.

        ## Examples

        iex> find_by_id(%{id: unique_id})
        %Book{id: unique_id}
    """
    def find_by_id(id) do
        Repo.get!(Book, id)
    end

    @doc """
        Creats a book.

        ## Examples

            ie> create_book(%{field: value})
            {:ok, %Book{}}

            ie> create_book(%{field: bad_value})
            {:error, %Ecto.Changgeset{}}
    """
    def create_book(attrs \\ %{}) do
        %Book{}
        |> Book.changeset(attrs)
        |> Repo.insert()
    end
end