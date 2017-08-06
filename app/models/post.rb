class Post < ApplicationRecord
  has_many :guesses, dependent: :destroy
  belongs_to :place
  validates :title, :photo_url, presence: true
end
