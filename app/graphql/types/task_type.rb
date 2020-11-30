module Types
  class TaskType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :percentage, Float, null: true
    field :status, Integer, null: false
    field :priority, Integer, null: false 
    field :due_date, GraphQL::Types::ISO8601DateTime, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :project, ::Types::ProjectType, null: false
    field :owner, ::Types::UserType, null: false
    field :members, [::Types::UserType], null: false
    field :tags, [::Types::TagType], null: false
  end
end
