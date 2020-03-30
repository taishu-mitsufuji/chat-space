class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

# class users < ActiveRecord::Base
#   has_many :users, through: :user_groups
#   has_many :user_groups
# end

# class groups < ActiveRecord::Base
#   has_many :groups, through: :user_groups
#   has_many :user_groups
# end

# class users_groups < ActiveRecord::Base
#   belongs_to :user
#   belongs_to :group
# end