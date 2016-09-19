class Question < ActiveRecord::Base
  has_many :answers

  validates :name, :content, :presence => true
end
