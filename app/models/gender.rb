class Gender < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'レディース' },
    { id: 2, name: 'メンズ' },
  ]

  include ActiveHash::Associations
  has_many :hair_styles
end
