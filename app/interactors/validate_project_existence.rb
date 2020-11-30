class ValidateProjectExistence
  include Interactor

  def call
    @project = Project.find_by_id(context.id)
    context.fail!("Record not found.") if @project.nil?
    context.project = @project
  end
end
