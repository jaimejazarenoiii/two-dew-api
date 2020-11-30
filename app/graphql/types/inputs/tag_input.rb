module Types
  class Inputs::TagInput < BaseInputObject

    argument :id, ID, required: false
    argument :name, String, required: true
  end
end
