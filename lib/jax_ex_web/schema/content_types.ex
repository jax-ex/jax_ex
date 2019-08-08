defmodule JaxExWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  object :post do
    field :id, :id
    field :title, :string
    field :content, :string
    field :author, :user
  end
end
