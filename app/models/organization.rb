class Organization < ApplicationRecord
  validates :name, presence: true

  default_scope { order('id desc') }

  has_many :events
end
