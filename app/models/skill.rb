class Skill < ActiveRecord::Base
  belongs_to :skillable, polymorphic: true
end
 
class User < ActiveRecord::Base
  has_many :skills, as: :skillable
end
 
class Project < ActiveRecord::Base
  has_many :skills, as: :skillable
end