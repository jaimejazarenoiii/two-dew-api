class DeleteProject
  include Interactor::Organizer

  organize ValidateProjectExistence, ValidateProjectEditable, DeleteSavedProject
end
