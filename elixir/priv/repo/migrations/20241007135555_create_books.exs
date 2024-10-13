defmodule LGBTBook.Repo.Migrations.CreateBooks do
    use Ecto.Migration

    def change do
        create table(:books, primary_key: false) do
            add(:id, :uuid, primary_key: true)
            add(:title, :string)
            add(:author, :string)
            add(:genre, :string)
            add(:lgbt_category, :string)
            add(:isbn_code, :string)

            timestamps()
        end
    end
end