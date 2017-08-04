class Post < ApplicationRecord
  has_many :guesses, dependent: :destroy
  belongs_to :place
end
