class ValidateTaskExistence
  include Interactor

  def call
    @task = Task.find_by_id(context.id)
    context.fail!("Record not found.") if @task.nil?
    context.task = @task
  end
end
