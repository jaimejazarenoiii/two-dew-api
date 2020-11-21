class ValidateRegisterParams
  include Interactor

  def call
    @user = User.new(context.to_h)
    context.user = @user

    context.fail!(error: @user.errors.full_messages.to_sentence) unless @user.save
  end
end
