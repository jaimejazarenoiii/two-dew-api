module Mutations
  class EditTask < BaseMutation
    include AuthenticableApiUser
    description "Edit task"

    argument :id, ID, required: true
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
      result = ::EditTask.call(params)
      result.success? ? result.task: execution_error(message: result.error)
    end
  end
end
