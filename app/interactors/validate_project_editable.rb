class ValidateProjectEditable
  include Interactor

  def call
    editable = context.project.owner == context.current_user ||
      context.project.members.exists?(context.current_user.id)
    context.fail!("Authorization error.") unless editable
  end
end
