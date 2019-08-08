defmodule JaxEx.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :content, :string
      add :user, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:posts, [:user])
  end
end
