class Drinklist < ActiveRecord::Base
  belongs_to :beer
  belongs_to :night
  # drinklists are the join tbale between beers and nights
end
