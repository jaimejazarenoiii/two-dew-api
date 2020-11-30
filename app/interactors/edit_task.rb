class EditTask
  include Interactor::Organizer

  organize ValidateTaskExistence, EditSavedTask
end
