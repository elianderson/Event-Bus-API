require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest

  test "an event can created" do
    original_event_count = Event.count

    event_params = {event: {
                    message: 'Important Message',
                    hostname: 'www.importantplace.com',
                    timestamp: Time.now
    }}

    post organization_events_url(organization_id: Organization.first.name), params: event_params

    assert_response :success
    assert_equal original_event_count + 1, Event.count
  end

end
