class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
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