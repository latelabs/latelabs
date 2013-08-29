# == Schema Information
#
# Table name: stars
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  project_id :integer
#  state      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Star < ActiveRecord::Base
  attr_accessible :state
  belongs_to :user
  belongs_to :project
end
