defmodule LGBTBookWeb.Schema do
  @moduledoc """
  Defines the graphql schema for this project.
  """
  use Absinthe.Schema
  import_types(LGBTBookWeb.Schemas.Types)

  alias LGBTBookWeb.Resolvers.TestResolver

  query do

    @desc "Get All Tests"
    field :tests, list_of(:test) do
      resolve &TestResolver.list_tests/3
    end

  end

end
