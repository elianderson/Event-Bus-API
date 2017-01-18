require 'test_helper'

class OrganizationsControllerTest < ActionDispatch::IntegrationTest

  test 'index lists organizations' do
    get organizations_url

    assert_response :success
    assert_not_nil assigns(:organizations)
    assert_equal Organization.count, assigns(:organizations).count
  end

  test 'an organization can be created' do 

    original_org_count = Organization.count

    post organizations_url, params: {organization: {name: 'My New Organization'}}

    assert_response :success
    assert_equal original_org_count + 1, Organization.count
  end

  # test 'should be able to be destroyed' do
  #
  #   original_org_count = Organization.count
  #
  #   delete organization_url(id: Organization.first.name)
  #
  #   assert_equal original_org_count - 1, Organization.count
  #
  # end

end
