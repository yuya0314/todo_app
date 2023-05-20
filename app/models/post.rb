class Post < ApplicationRecord
  validates :title,{presence: true,length:{maximum:20}}
  validates :memo,length:{maximum:500}
  validates :begin,{presence: true}
  validates :last,{presence: true,comparison:{greater_than: :begin}}
end
