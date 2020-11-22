class SignIn
  include Interactor::Organizer

  organize ValidateSignInParams, GenerateToken
end
