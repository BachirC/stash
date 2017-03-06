defmodule Stash.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string, null: false
      add :source, :string, null: false
      add :origin, :string, null: false

      timestamps()
    end
  end
end
