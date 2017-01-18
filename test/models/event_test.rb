require 'test_helper'

class EventTest < ActiveSupport::TestCase

  test 'must have a event_id, message, hostname and timestamp' do
    event = Event.new

    refute event.valid?, 'event is invalid'
  end

  test 'should list the newest first' do
    event = Event.create(organization_id: 1,
                          message: 'Important Message',
                          hostname: 'www.importantplace.com',
                          timestamp: Time.now)

    assert_equal event, Event.first
  end
end
