class Post < ApplicationRecord
  belongs_to :place
  has_many :guesses
end
