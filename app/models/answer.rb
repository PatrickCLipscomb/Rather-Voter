class Answer < ActiveRecord::Base
  belongs_to :question
  # has_many :thirdmodels

  validates :content, :presence => true

  def upvote
    if !self.votes
      self.votes = 0
    end
    self.votes += 1
    self.save
  end
end
