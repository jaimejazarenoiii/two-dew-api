module Types
  class Payloads::AuthenticatedUserType < Types::BaseObject
    field :token, String, null: false
    field :user, Types::UserType, null: false
  end
end
