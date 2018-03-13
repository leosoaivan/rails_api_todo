class Todo < ApplicationRecord
  has_many :items, dependent: :destroy
  belongs_to :user, optional: true

  validates :title,       presence: true
  validates :created_by,  presence: true
end
