module Types
  class MutationType < Types::BaseObject

    field :register_user, mutation: Mutations::RegisterUser
    field :sign_in, mutation: Mutations::SignIn
    field :create_project, mutation: Mutations::CreateProject
    field :edit_project, mutation: Mutations::EditProject
    field :delete_project, mutation: Mutations::DeleteProject
    field :create_task, mutation: Mutations::CreateTask
    field :edit_task, mutation: Mutations::EditTask
    field :delete_task, mutation: Mutations::DeleteTask
  end
end
