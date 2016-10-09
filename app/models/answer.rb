class Answer < ActiveRecord::Base
  belongs_to :question
  # has_many :comments

  validates :content, :presence => true
  validates_length_of :content, :maximum => 200, :message => "less text please"

  has_attached_file :image, :styles => { :medium => "120x120>" }, :default_url => "/images/:style/missing_content.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def upvote
    if !self.votes
      self.votes = 0
    end
    self.votes += 1
    self.save
  end
end
