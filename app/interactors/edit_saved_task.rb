class EditSavedTask
  include Interactor

  def call
    @task = context.task
    context.tags.map { |v| Tag.find_by(id: v.id).update(name: v.name) }
    @task.assign_attributes(title: context.title,
                            description: context.description,
                            status: context.status,
                            priority: context.priority,
                            due_date: context.due_date,
                            percentage: context.percentage)
    context.fail!(@task.errors.full_message.to_sentence) unless @task.valid?
    @task.save
    context.task = @task
  end
end
