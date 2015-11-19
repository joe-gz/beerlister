class Night < ActiveRecord::Base
  belongs_to :user
  # each night is specific to a user
  # a night will have many beers posted to it through the drinklist join table
  has_many :drinklists
  has_many :beers, through: :drinklists
end
