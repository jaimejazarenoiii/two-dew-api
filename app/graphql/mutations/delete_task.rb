module Mutations
  class DeleteTask < BaseMutation
    include AuthenticableApiUser
    description "Delete task"

    argument :id, ID, required: true

    type ::Types::TaskType

    def resolve(**params)
      params[:current_user] = context[:current_user]
      result = ::DeleteTask.call(params)
      result.success? ? result.task: execution_error(message: result.error)
    end
  end
end
