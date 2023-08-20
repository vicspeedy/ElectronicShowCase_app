class Category < ApplicationRecord
    # Validaciones 
    # Start *TODO:
    validates :name,      presence: true,
                          uniqueness: true
    validates :available, inclusion: { in: [true, false] }
    # End *TODO:
end
