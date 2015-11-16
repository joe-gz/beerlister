class Night < ActiveRecord::Base
  belongs_to :user

  has_many :drinklists
  has_many :beers, through: :drinklists
end
