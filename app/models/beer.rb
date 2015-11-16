class Beer < ActiveRecord::Base
  belongs_to :user

  has_many :drinklists
  has_many :nights, through: :drinklists
end
