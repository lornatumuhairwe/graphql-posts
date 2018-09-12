class Resolvers::CreatePost < GraphQL::Function
  argument :title, !types.String
  argument :rating, !types.Int

  type Types::PostType

  def call(_obj, args, _ctx)
    Post.create!(title: args[:title], rating: args[:rating])
  end
end
