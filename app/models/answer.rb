class Answer < ActiveRecord::Base
  belongs_to :question
  # has_many :comments

  validates :content, :presence => true
  validates_length_of :content, :maximum => 45, :message => "less text please"

  def upvote
    if !self.votes
      self.votes = 0
    end
    self.votes += 1
    self.save
  end
end
