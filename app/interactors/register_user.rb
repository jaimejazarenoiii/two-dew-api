class RegisterUser
  include Interactor::Organizer

  organize ValidateRegisterParams, GenerateToken
end
