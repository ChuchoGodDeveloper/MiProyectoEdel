class GalleryImage < ApplicationRecord
  has_one_attached :image
end