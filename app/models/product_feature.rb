class ProductFeature < ApplicationRecord
  # Relaciones
  belongs_to :product
  belongs_to :feature

  # Start: *TODO: "Validaciones"
  validates :product, :feature, presence: true
  # End: *TODO: 
end
