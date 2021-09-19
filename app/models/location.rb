class Location < ApplicationRecord
  mount_uploader :location_image, ImageUploader
  has_one_attached :location_image
  
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  
  belongs_to :user, optional: true
  has_many :reviews, dependent: :destroy
  
  def avg_score
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end
  def review_score_percentage
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end
end
