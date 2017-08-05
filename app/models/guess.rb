class Guess < ApplicationRecord
  belongs_to :post

  def score_up
    self.score += 1
  end
end
