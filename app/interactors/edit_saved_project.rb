class EditSavedProject
  include Interactor

  def call
    @project = context.project
    @project.name = context.name
    @project.description = context.description
    context.fail!(@project.errors.full_message.to_sentence) unless @project.valid?
    @project.save
    context.project = @project
  end
end
