class Resolvers::FetchSpecificPost < GraphQL::Function
  argument :id, !types.Int

  type Types::PostType

  def call(_obj, args, _ctx)
    Post.find(args[:id])
  end
end
