module Types
  class Inputs::ProfileInput < BaseInputObject
    description "Arguments for user profile"

    argument :first_name, String, required: true
    argument :middle_name, String, required: false
    argument :last_name, String, required: true
    argument :suffix, String, required: false
    argument :gender, Integer, required: true
    argument :age, Integer, required: true
  end
end
