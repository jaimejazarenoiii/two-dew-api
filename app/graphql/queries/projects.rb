module Queries
  class Projects < Queries::BaseQuery
    description 'Find all projects'

    type [Types::ProjectType], null: false

    def self.authorized?(obj, ctx)
      super && ctx[:current_user].present?
    end

    def resolve
      context[:current_user].projects
    end
  end
end
