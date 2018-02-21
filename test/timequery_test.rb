require 'test_helper'

class Timequery::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Timequery
  end

  test "between_range_column" do
    assert_equal [], Cat.between_range_column(:created_at, Time.current - 1.day, Time.current)
  end
end
