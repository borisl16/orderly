class Place < ApplicationRecord
    has_many :storage_items
    has_one_attached :image
end
