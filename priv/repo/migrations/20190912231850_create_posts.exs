defmodule JaxEx.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :content, :string
      add :title, :string
      add :creator_name, :string

      timestamps()
    end

  end
end
