defmodule LGBTBookWeb.Schemas.Types do
  @moduledoc """
  Defines the types for the Schema to use.
  """
  use Absinthe.Schema.Notation

  import_types(Absinthe.Type.Custom)
  object :test do
    field :id, :id
    field :words, :string
  end
end
