class Organization < ApplicationRecord
  validates :name, presence: true

  default_scope { order('id desc') }
end
