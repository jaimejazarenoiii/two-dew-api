module Types
  class TagType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :task, ::Types::TaskType, null: false
  end
end
