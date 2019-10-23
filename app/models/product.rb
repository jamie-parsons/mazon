class Product < ApplicationRecord

validates :title, :description, :image_url, :price, presence: true
validates :title, uniqueness: true
validates :price, :numericality => {:greater_than => 0.01}
validates :image_url, allow_blank: true, format: {
    with:   %r{\.(gif|jpg|png)Z}i,
    message: "must be gif, jpg, png"
}
end
