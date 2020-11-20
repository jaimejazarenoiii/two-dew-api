class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.boolean :starred
      t.text :description
      t.boolean :unread
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
