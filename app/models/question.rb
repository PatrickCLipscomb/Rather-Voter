class Question < ActiveRecord::Base
  has_many :answers
  has_many :comments

  validates :name, :content, :presence => true
end
