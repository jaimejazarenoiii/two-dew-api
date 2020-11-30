module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # field :user, UserType, null: false do
    #   description "Find an user by ID"
    #   argument :id, ID, required: true
    # end

    # def user(id:) 
    #   User.find(id)
    # end

    field :projects, [ProjectType], null: false,
      resolver: Queries::Projects
  end
end
