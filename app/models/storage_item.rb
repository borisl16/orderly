class StorageItem < ApplicationRecord
    belongs_to :place
    has_one_attached :image
end
