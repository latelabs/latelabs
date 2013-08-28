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

describe User do
  
before do
    @user = User.new(user_name: "Example User", email: "user@example.com")
  end

  subject { @user }

  it { should have_many(:projects) }
  it { should have_many(:messages) }
  it { should have_many(:skills) }

  # it { should validate_presence_of(:name) }
  # it { should validate_presence_of(:email) }
end
