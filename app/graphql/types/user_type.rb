module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :first_name, String, null: false
    field :middle_name, String, null: true
    field :last_name, String, null: false
    field :suffix, String, null: true
    field :gender, Integer, null: false 
    field :age, Integer, null: false
  end
end
