class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, null: false, default: ""
      t.text :description, null: false, default: ""
      t.datetime :due_date
      t.float :percentage, null: false, default: 0
      t.integer :status, null: false, default: 0
      t.integer :priority, null: false, default: 0

      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
