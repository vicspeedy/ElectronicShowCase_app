class Product < ApplicationRecord
  # Relaciones
  belongs_to :user
  belongs_to :category
  # Start *TODO: "Relaciones muchos a muchos"
  has_many :product_features, dependent: :destroy
  has_many :features, through: :product_features

  # Start *TODO: "Validaciones"
  validates :name,            presence: true,
                              uniqueness: true
  validates :description,     presence: true,
                              length: { minimum: 10 }
  validates :price,           presence: true,
                              numericality: { greater_than: 0 }
  validates :release_date,    presence: true
  validates :link_to_website, presence: true,
                              format: { with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/ },
                              uniqueness: true
  # End *TODO:
end
=begin
    t.references :user, null: false, foreign_key: true
    t.string     :name
    t.text       :description
    t.references :category, null: false, foreign_key: true
    t.integer    :price
    t.date       :release_date
    t.string     :link_to_website
    t.boolean    :available, default: true
=end 