class ValidateCreateTaskParams
  include Interactor

  def call
    @tags = context.tags.map { |v| Tag.create(name: v.name) }
    @task = context.project.tasks
      .new(title: context.title,
           description: context.description,
           status: context.status,
           priority: context.priority,
           due_date: context.due_date,
           percentage: context.percentage,
           tags: @tags)
    @task.owner = context.current_user
    context.fail!(@task.errors.full_message.to_sentence) unless @task.valid?
    @task.save
    context.task = @task
  end
end
