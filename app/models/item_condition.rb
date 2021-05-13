class ItemCondition < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '新品・未使用' },
    { id: 3, name: '未使用に近い' },
    { id: 4, name: '目立った傷汚れない' },
    { id: 5, name: 'やや傷あり' },
    { id: 6, name: '傷や汚れあり' },
    { id: 7, name: '売り物にならない' },
  ]

  include ActiveHash::Associations
  has_many :items
  end