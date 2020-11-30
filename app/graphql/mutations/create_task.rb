module Mutations
  class CreateTask < BaseMutation
    include AuthenticableApiUser
    description "Create new task"

    argument :id, ID, required: true, description: "Project ID"
    argument :title, String, required: true
    argument :description, String, required: false
    argument :status, Integer, required: true
    argument :priority, Integer, required: false
    argument :percentage, Float, required: false
    argument :due_date, Integer, required: false
    argument :tags, [::Types::Inputs::TagInput], required: false

    type ::Types::TaskType

    def resolve(**params)
      params[:current_user] = context[:current_user]
      result = ::CreateTask.call(params)
      result.success? ? result.task : execution_error(message: result.error)
    end
  end
end
