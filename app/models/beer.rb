class Beer < ActiveRecord::Base
  belongs_to :user
  has_many :comments
# a beer is created by one user
# a beer can have many comments
# a beer can be posted to many nights for any user through drinklist join
# dependent destroy allows us to delete the beer
 # without having to first delete it from a night
  has_many :drinklists, dependent: :destroy
  has_many :nights, through: :drinklists
end
