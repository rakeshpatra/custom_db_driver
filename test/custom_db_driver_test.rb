require 'test_helper'

class CustomDbDriverTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, CustomDbDriver
  end
end
