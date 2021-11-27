require 'test_helper'

class MybooksControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get mybooks_index_url
    assert_response :success
  end

  test 'should get new' do
    get mybooks_new_url
    assert_response :success
  end

  test 'should get edit' do
    get mybooks_edit_url
    assert_response :success
  end

  test 'should get show' do
    get mybooks_show_url
    assert_response :success
  end
end
