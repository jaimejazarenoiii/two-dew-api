module Mutations
  class RegisterUser < BaseMutation
    description "Register new user."

    argument :email, String, required: true
    argument :password, String, required: true
    argument :password_confirmation, String, required: true
    argument :profile, Types::Inputs::ProfileInput, required: true

    type ::Types::Payloads::AuthenticatedUserType

    def resolve(**params)
      result = ::RegisterUser.call(params)
      result.success? ? result : execution_error(message: result.error)
    end
  end
end
