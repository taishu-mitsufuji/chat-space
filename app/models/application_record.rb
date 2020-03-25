class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class users < ActiveRecord::Base
  has_many :users, through: :user_group
  has_many :user_group
end

class group < ActiveRecord::Base
  has_many :group, through: :user_group
  has_many :user_group
end