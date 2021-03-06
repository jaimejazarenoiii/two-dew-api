# == Schema Information
#
# Table name: taggings
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tag_id     :bigint
#  task_id    :bigint
#
# Indexes
#
#  index_taggings_on_tag_id   (tag_id)
#  index_taggings_on_task_id  (task_id)
#
# Foreign Keys
#
#  fk_rails_...  (tag_id => tags.id)
#  fk_rails_...  (task_id => tasks.id)
#
class Tagging < ApplicationRecord
  belongs_to :tag
  belongs_to :task
end
