class Feature < ApplicationRecord
    # Validaciones 
    # Start *TODO:
    validates :name,      presence: true,
                          uniqueness: true
    validates :available, inclusion: { in: [true, false] }
    # End *TODO:

    # Start *TODO: "Relaciones muchos a muchos"
    has_many :product_features, dependent: :destroy
    has_many :products, through: :product_features
end
