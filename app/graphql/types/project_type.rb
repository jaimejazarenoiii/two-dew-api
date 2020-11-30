module Types
  class ProjectType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :starred, Boolean, null: false
    field :unread, Boolean, null: false
    field :owner, ::Types::UserType, null: false
    field :tasks, [::Types::TaskType], null: false 
    field :members, [::Types::UserType], null: false

    def owner
      object.owner
    end

    def tasks
      object.tasks
    end

    def members
      object.members
    end
  end
end
