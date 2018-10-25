require 'test_helper'

class SpecialinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specialinfo = specialinfos(:one)
  end

  test "should get index" do
    get specialinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_specialinfo_url
    assert_response :success
  end

  test "should create specialinfo" do
    assert_difference('Specialinfo.count') do
      post specialinfos_url, params: { specialinfo: { actioner_access: @specialinfo.actioner_access, description: @specialinfo.description, document_type: @specialinfo.document_type, name: @specialinfo.name, user_access: @specialinfo.user_access } }
    end

    assert_redirected_to specialinfo_url(Specialinfo.last)
  end

  test "should show specialinfo" do
    get specialinfo_url(@specialinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_specialinfo_url(@specialinfo)
    assert_response :success
  end

  test "should update specialinfo" do
    patch specialinfo_url(@specialinfo), params: { specialinfo: { actioner_access: @specialinfo.actioner_access, description: @specialinfo.description, document_type: @specialinfo.document_type, name: @specialinfo.name, user_access: @specialinfo.user_access } }
    assert_redirected_to specialinfo_url(@specialinfo)
  end

  test "should destroy specialinfo" do
    assert_difference('Specialinfo.count', -1) do
      delete specialinfo_url(@specialinfo)
    end

    assert_redirected_to specialinfos_url
  end
end
