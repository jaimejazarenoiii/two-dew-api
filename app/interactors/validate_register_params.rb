class ValidateRegisterParams
  include Interactor

  def call
    new_hash = context.to_h.map { |k,v| k==:profile ? v.to_h : { k => v } }
      .reduce({}, :merge)
    @user = User.new(new_hash)
    context.user = @user

    context.fail!(error: @user.errors.full_messages.to_sentence) unless @user.save
  end
end
