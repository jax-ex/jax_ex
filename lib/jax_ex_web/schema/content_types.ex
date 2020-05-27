defmodule JaxExWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation
  import_types Absinthe.Type.Custom

  object :post do
    field :id, :id
    field :title, :string
    field :content, :string
    field :author, :user
    field :published_at, :naive_datetime
  end
end
