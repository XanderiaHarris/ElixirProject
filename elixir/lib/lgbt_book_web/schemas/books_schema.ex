defmodule LGBTBookWeb.Schema.BooksSchema do
    @moduledoc """
    Graphql schema for books
    """
    use Absinthe.Schema.Notation

    alias LGBTBookWeb.Resolvers.BooksResolver

    object :book do
        field :id, non_null(:id)
        field :title, :string
        field :author, :string
        field :genre, :string
        field :lgbt_category, :string
        field :isbn_code, :string
        field :total_rows, :integer
        field :inserted_at, :naive_datetime
        field :updated_at, :naive_datetime
    end

    object :book_mutations do
        @desc "Create a new book"
        field :create_book, :book do
            arg(:title, non_null(:string))
            arg(:author, non_null(:string))
            arg(:genre, non_null(:string))
            arg(:lgbt_category, non_null(:string))
            arg(:isbn_code, non_null(:string))

            resolve(&BooksResolver.create_book/3)
        end
    end

    object :book_queries do
        @desc "Search for a book by id"
        field :get_book_by_id, :book do
            arg(:id, non_null(:id))

            resolve(&BooksResolver.find_by_id/3)
        end
    end
end