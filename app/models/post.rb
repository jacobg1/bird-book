class Post < ApplicationRecord
  has_many :guesses, dependent: :destroy
  belongs_to :place
  has_many :tags, dependent: :destroy
  has_many :categories, through: :tags
  validates :title, :photo_url, presence: true
end
