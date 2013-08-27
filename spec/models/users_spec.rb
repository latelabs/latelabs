# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  user_name             :string(255)
#  email                 :string(255)
#  bio                   :text
#  skills                :string(255)
#  applied_projects      :string(255)
#  contributing_projects :string(255)
#  stared_projects       :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'spec_helper'

describe Users do
  pending "add some examples to (or delete) #{__FILE__}"
end
