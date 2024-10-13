defmodule LGBTBook.Books.Book do
    use Ecto.Schema
    import Ecto.Changeset

    @primary_key {:id, :binary_id, autogenerate: true}
    schema "books" do
        field :title, :string
        field :author, :string
        field :genre, :string
        field :lgbt_category, :string
        field :isbn_code, :string
        # space reserved for image.

        timestamps()
    end

    @doc false
    def changeset(book, attrs) do
        book
        |> cast(attrs, [:title, :author])
        |> validate_required([:title, :author])
    end
end