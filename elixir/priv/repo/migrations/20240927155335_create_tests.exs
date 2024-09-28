defmodule LGBTBook.Repo.Migrations.CreateTests do
  use Ecto.Migration

  def change do
    create table(:tests, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:words, :string)

      timestamps()
    end
  end
end
