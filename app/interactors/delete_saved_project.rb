class DeleteSavedProject
  include Interactor

  def call
    @project = context.project
    @project.destroy
    context.project = @project
  end
end
