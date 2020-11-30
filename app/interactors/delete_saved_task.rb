class DeleteSavedTask
  include Interactor

  def call
    @task = context.task
    @task.destroy
    context.task = @task
  end
end
