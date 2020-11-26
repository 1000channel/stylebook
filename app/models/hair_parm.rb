class HairParm < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'ストレート' },
    { id: 2, name: 'ウェーブ' },
  ]

  include ActiveHash::Associations
  has_many :hair_styles
end
