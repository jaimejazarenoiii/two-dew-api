module Mutations
  class CreateProject < BaseMutation
    include AuthenticableApiUser
    description "Create new project"

    argument :name, String, required: true
    argument :description, String, required: false

    type ::Types::ProjectType

    def resolve(**params)
      params[:current_user] = context[:current_user]
      result = ::CreateProject.call(params)
      result.success? ? result.project : execution_error(message: result.error)
    end
  end
end
