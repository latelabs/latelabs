# == Schema Information
#
# Table name: messages
#
#  id            :integer          not null, primary key
#  user_sender   :integer
#  user_receiver :integer
#  project_id    :integer
#  title         :string(255)
#  body          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Message < ActiveRecord::Base
  attr_accessible :title, :body, :user_sender, :user_receiver, :project_id
  
  belongs_to :recipient, :class_name => "User"
  belongs_to :sender, :class_name => "User"

end
