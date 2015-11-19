class User < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  # users can create many beers, have many nights, and post many comments
  has_many :beers
  has_many :nights
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
end
