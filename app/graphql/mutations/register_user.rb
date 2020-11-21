module Mutations
  class RegisterUser < BaseMutation
    argument :first_name, String, required: true
    argument :middle_name, String, required: false
    argument :last_name, String, required: true
    argument :suffix, String, required: false
    argument :gender, Integer, required: true
    argument :age, Integer, required: true
    argument :email, String, required: true
    argument :password, String, required: true
    argument :password_confirmation, String, required: true

    type ::Types::Payloads::RegisterUserType

    def resolve(**params)
      result = ::RegisterUser.call(params)
      result.success? ? result : execution_error(message: result.error)
    end
  end
end
