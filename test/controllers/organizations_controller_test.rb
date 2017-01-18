require 'test_helper'

class OrganizationsControllerTest < ActionDispatch::IntegrationTest

  test 'index lists organizations' do
    get organizations_url
    assert_response :success

    assert_not_nil assigns(:organizations)
    assert_equal Organization.count, assigns(:organizations).count
  end

end
