# == Schema Information
#
# Table name: projects
#
#  id                   :integer          not null, primary key
#  user_id              :integer
#  title                :string(255)
#  explanation          :text
#  tech                 :string(255)
#  applicants           :integer
#  collaborators        :integer
#  stars                :integer
#  code_repository_link :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'spec_helper'

describe Projects do
  pending "add some examples to (or delete) #{__FILE__}"
end
