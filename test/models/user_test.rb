require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "A user must enter a first name" do
    user = User.new
    assert !user.save
    assert !user.errors[:first_name].empty?
  end
  
  test "A user must enter a last name" do
    user = User.new
    assert !user.save
    assert !user.errors[:last_name].empty?
  end
  
  test "A user must enter a profile name" do
    user = User.new
    assert !user.save
    assert !user.errors[:profile_name].empty?
  end
  
  test "A user must have a unique profile name" do
    user = User.new
    user.profile_name = users(:norm).profile_name
    assert !user.save
    assert !user.errors[:profile_name].empty?
  end
  
  test "a suer should have a profile name without spaces" do
    user = User.new
    user.profile_name = "My profile with spaces"
    
    assert !user.save
    assert !user.errors[:profile_name].empty?
    assert user.errors[:profile_name].include?("must be formatted correctly")
  end
end
