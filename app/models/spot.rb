class Spot < ApplicationRecord
  validates :spot, presence: true, length: { minimum: 3 }
  validates :time_start, presence: true, length: { minimum: 5 }
  validates :time_end, presence: true, length: { minimum: 5 }
  validates :spot, presence: true, length: { minimum: 3 }
  validates :datestring, presence: true
  acts_as_followable
  belongs_to :user
  geocoded_by :location
  geocoded_by :adress
  after_validation :geocode
  has_many :comments, dependent: :destroy

  def adress
    [address1, town, postcode].compact.join(", ")
  end
end
