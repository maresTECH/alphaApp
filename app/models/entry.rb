class Entry < ApplicationRecord
  validates :title, presence: true
  validates :name, presence: true
  validates :detail, presence: true
end
