class Shop < ApplicationRecord
  has_many :hair_styles
  belongs_to :user

  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
end
