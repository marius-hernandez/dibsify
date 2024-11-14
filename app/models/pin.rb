class Pin < ApplicationRecord
  self.primary_key = "id"
  has_many_attached :pictures

  def compressed_pics
    pictures.map do |pic|
      pic.variant(resize_to_limit: [ 150, 150 ]).processed
    end
  end
end
