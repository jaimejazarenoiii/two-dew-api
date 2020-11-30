class DeleteTask
  include Interactor::Organizer

  organize ValidateTaskExistence, DeleteSavedTask
end
