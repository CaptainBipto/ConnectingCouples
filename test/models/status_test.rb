require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "that a status requires content" do
    status = Status.new
    assert !status.save
    assert !status.errors[:content].empty?
  end

  test "that a status contains at least 2 characters" do
    status = Status.new
    status.content = "h"
    assert !status.save
    assert !status.errors[:content].empty?
  end
  
  test "that a status has a user id (is posted by a registered user)" do
    status = Status.new
    status.content = "Hello"
    assert !status.save
    assert !status.errors[:user_id].empty?
  end

end
