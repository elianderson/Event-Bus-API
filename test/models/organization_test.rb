require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase

  test 'must have a name' do
    organization = Organization.new
    refute organization.valid?, 'organization is valid without a name'
    assert_not_nil organization.errors[:name], 'no validation for name present'
  end

end
