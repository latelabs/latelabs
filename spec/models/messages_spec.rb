# == Schema Information
#
# Table name: messages
#
#  id             :integer          not null, primary key
#  user_sender    :integer
#  user_receivers :integer
#  project_id     :integer
#  title          :string(255)
#  body           :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'spec_helper'

# describe Messages do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
