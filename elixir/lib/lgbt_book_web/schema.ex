defmodule LGBTBookWeb.Schema do
  @moduledoc """
  Defines the graphql schema for this project.
  """
  use Absinthe.Schema
  import_types(LGBTBookWeb.Schemas.Types)

  alias LGBTBookWeb.Resolvers.TestResolver
  alias LGBTBookWeb.Resolvers.BooksResolver

  query do

    @desc "Get All Tests"
    field :tests, list_of(:test) do
      resolve &TestResolver.list_tests/3
    end

    @desc "Get All Books"
    field :books, list_of(:book) do
      resolve &BooksResolver.list_books/3
    end

    import_fields(:book_queries)
  end

  mutation do
    import_fields(:book_mutations)
  end
end
