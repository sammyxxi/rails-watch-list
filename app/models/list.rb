class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, dependent: :destroy, through: :bookmarks
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
end
