class CreateTask
  include Interactor::Organizer

  organize ValidateProjectExistence, ValidateProjectEditable,
    ValidateCreateTaskParams
end
