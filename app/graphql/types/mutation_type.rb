module Types
  class MutationType < Types::BaseObject

    field :register_user, mutation: Mutations::RegisterUser
    field :sign_in, mutation: Mutations::SignIn
  end
end
