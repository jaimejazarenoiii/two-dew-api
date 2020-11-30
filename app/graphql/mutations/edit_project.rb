module Mutations
  class EditProject < BaseMutation
    include AuthenticableApiUser
    description "Edit project"

    argument :id, ID, required: true
    argument :name, String, required: true
    argument :description, String, required: true

    type ::Types::ProjectType

    def resolve(**params)
      params[:current_user] = context[:current_user]
      result = ::EditProject.call(params)
      result.success? ? result.project : execution_error(message: result.error)
    end
  end
end
