module Mutations
  class SignIn < BaseMutation
    description "Sign in user"
    argument :credentials, Types::Inputs::CredentialsInput, required: true

    type ::Types::Payloads::AuthenticatedUserType

    def resolve(**params)
      result = ::SignIn.call(params)
      result.success? ? result : execution_error(message: result.error)
    end
  end
end
