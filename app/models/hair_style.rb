class HairStyle < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :hair_length
  belongs_to :hair_parm
  belongs_to :hair_color

end
