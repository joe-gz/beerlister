class Beer < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  has_many :drinklists, dependent: :destroy
  has_many :nights, through: :drinklists
end
