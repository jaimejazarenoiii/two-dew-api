class ValidateSignInParams
  include Interactor

  def call
    credentials = context.credentials
    context.fail! unless credentials

    @user = User.find_by(email: credentials[:email])

    # ensures we have the correct user
    context.fail!(error: @user.errors.full_messages.to_sentence) unless @user
    context.fail!(error: "Invalid credentials.") unless @user.valid_password?(credentials[:password])
    context.user = @user
  end
end
