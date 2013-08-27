# == Schema Information
#
# Table name: contributions
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  project_id :integer
#  state      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contributions < ActiveRecord::Base
  attr_accessible :created_at, :user_id, :project_id, :state
  belongs_to :user
  belongs_to :project
end
