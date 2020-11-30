# == Schema Information
#
# Table name: tasks
#
#  id          :bigint           not null, primary key
#  description :text             default(""), not null
#  due_date    :datetime
#  percentage  :float            default(0.0), not null
#  priority    :integer          default(0), not null
#  status      :integer          default(0), not null
#  title       :string           default(""), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  project_id  :bigint
#  user_id     :bigint
#
# Indexes
#
#  index_tasks_on_project_id  (project_id)
#  index_tasks_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (project_id => projects.id)
#  fk_rails_...  (user_id => users.id)
#
class Task < ApplicationRecord
  belongs_to :project
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many :members, class_name: "User", as: :memberable
  has_many :taggings
  has_many :tags, through: :taggings, dependent: :destroy

  enum status: [:backlog, :todo, :in_progress, :completed]
  validates :percentage, inclusion: 0..100
  validate :due_date_cannot_be_in_the_past

  accepts_nested_attributes_for :tags, allow_destroy: true

  private

  def due_date_cannot_be_in_the_past
    if due_date.present? && due_date < Date.today
      errors.add(:due_date, "can't be in the past")
    end
  end
end
