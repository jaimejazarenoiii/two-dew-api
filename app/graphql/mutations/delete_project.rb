module Mutations
  class DeleteProject < BaseMutation
    include AuthenticableApiUser
    description "Delete project"

    argument :id, ID, required: true

    type ::Types::ProjectType

    def resolve(**params)
      params[:current_user] = context[:current_user]
      result = ::DeleteProject.call(params)
      result.success? ? result.project : execution_error(message: result.error)
    end
  end
end
