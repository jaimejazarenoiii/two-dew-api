# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  age                    :integer
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           default(""), not null
#  gender                 :integer          default(0), not null
#  last_name              :string           default(""), not null
#  memberable_type        :string
#  middle_name            :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  suffix                 :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  memberable_id          :bigint
#
# Indexes
#
#  index_users_on_email                              (email) UNIQUE
#  index_users_on_memberable_type_and_memberable_id  (memberable_type,memberable_id)
#  index_users_on_reset_password_token               (reset_password_token) UNIQUE
#
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
