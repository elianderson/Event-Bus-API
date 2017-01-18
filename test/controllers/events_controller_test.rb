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

  test "show all events for an organization with a limit" do
    organization = Organization.first
    limit = 2

    get organization_events_url(organization_id: organization.name, limit: limit)
    assert_response :success

    assert organization.events.count > limit
    assert_equal limit, assigns(:events).count
  end

  test "show all events for an organization with a limit and hostname specified" do
    organization = Organization.first
    hostname = 'www.anothermessagesender.com'
    limit = 3

    get organization_events_url(organization_id: organization.name, limit: limit, hostname: hostname)
    assert_response :success

    assert limit > assigns(:events).count
    assert organization.events.where(hostname: hostname).count, assigns(:events).count
  end

end
