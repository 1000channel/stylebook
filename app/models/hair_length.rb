class HairLength < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'ショート（肩上）' },
    { id: 2, name: 'ミディアム（肩下）' },
    { id: 3, name: 'ロング（胸元）' },
  ]

  include ActiveHash::Associations
  has_many :hair_styles
end
