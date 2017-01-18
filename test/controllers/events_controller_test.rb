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

  test "show all events" do
    get events_url

    assert_response :success
    assert_not_nil assigns(:events)
    assert_equal Event.all, assigns(:events)
  end

  test "show all events for an organization" do
    organization = Organization.first

    get organization_events_url(organization_id: organization.name)
    assert_response :success

    assert_equal organization.events, assigns(:events)
  end

end
