class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet
  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  # VendorSweet.create!(price: -20)
  # Validation failed: Vendor must exist, Sweet must exist, Price must be 
  # greater than or equal to 0 (ActiveRecord::RecordInvalid)

end
