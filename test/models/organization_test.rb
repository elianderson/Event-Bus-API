require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase

  test 'must have a name' do
    organization = Organization.new
    refute organization.valid?, 'organization is valid without a name'
    assert_not_nil organization.errors[:name], 'no validation for name present'
  end

  test 'should list the newest first' do
    organization = Organization.create(name: "My New Organization")

    assert_equal organization, Organization.first
  end
end
