Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allPosts, !types[Types::PostType] do
    resolve -> (obj, args, ctx) { Post.all }
  end

  field :firstPost, Types::PostType do
    resolve -> (obj, args, ctx) { Post.first }
  end
end
