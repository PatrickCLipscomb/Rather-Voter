class Answer < ActiveRecord::Base
  belongs_to :question
  # has_many :thirdmodels

  validates :content, :presence => true
end
