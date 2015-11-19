class Comment < ActiveRecord::Base
  belongs_to :beer
  belongs_to :user
  # any user can post a comment on any beer showing
  # a given comment can only be posted on one beer
end
