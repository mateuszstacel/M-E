class Information < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def address
    [address1, town, postcode].compact.join(", ")
  end
end
