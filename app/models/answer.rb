class Answer < ActiveRecord::Base
  belongs_to :question
  # has_many :comments need to make it so new question added does not have missing space.

  validates :content, :presence => true
  validates_length_of :content, :maximum => 200, :message => "less text please"

  has_attached_file :image, :styles => { :medium => "120x120>", :large => "500x500#" }, :default_url => "/images/:style/missing_content.jpg", :processors => [:cropper]
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h

  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end

  def image_geometry(style = :original)
   @geometry ||= {}
   @geometry[style] ||= Paperclip::Geometry.from_file(image.path(style))
  end

  def reprocess_image
   image.reprocess!
  end

  def upvote
    if !self.votes
      self.votes = 0
    end
    self.votes += 1
    self.save
  end
end
