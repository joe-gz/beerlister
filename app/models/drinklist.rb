class Drinklist < ActiveRecord::Base
  belongs_to :beer
  belongs_to :night
end
