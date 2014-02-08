require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest

test "that /sign_in opens the login page" do
  get '/sign_in'
  assert_response :success
end

test "that /sign_out logs the user out" do
  get '/sign_out'
  assert_response :redirect
  assert_redirected_to '/'
end

test "that /register opens the register page" do
  get '/register'
  assert_response :success
end

test "that /ProfileName opens the user's profile page" do
  get '/Norm'
  assert_response :success
end

end
