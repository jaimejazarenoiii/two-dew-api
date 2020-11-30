class EditProject
  include Interactor::Organizer

  organize ValidateProjectExistence, ValidateProjectEditable, EditSavedProject
end
