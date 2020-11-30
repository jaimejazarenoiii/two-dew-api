class ValidateCreateProjectParams
  include Interactor

  def call
    @project = context.current_user.projects.new(name: context.name, description: context.description)
    context.fail!(@project.errors.full_message.to_sentence) unless @project.valid?
    @project.save
    context.project = @project
  end
end
