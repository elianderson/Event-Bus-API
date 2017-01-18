class Event < ApplicationRecord
  validates :organization_id, :message, :hostname, :timestamp, presence: true

  default_scope { order('id desc') }

  belongs_to :organization
end
