defmodule LGBTBookWeb.Resolvers.BooksResolver do
    alias LGBTBook.Books

    @doc """
        Get a list of books
    """
    def list_books(_parents, _args, _resolution) do
        {:ok, Books.list_books()}
    end

    @doc """
        Get book by id
        %{id: id} converts the args.id into just a var named id
    """
    def find_by_id(_parents, %{id: id} = args, _resolution) do
        {:ok, Books.find_by_id(id)}
    end

    def create_book(_parents, args, _info) do
        case Books.create_book(args) do
            {:ok, book} ->
                {:ok, book}

            error ->
                {:error, "could not create book: #{inspect(error)}"}
        end
    end
end