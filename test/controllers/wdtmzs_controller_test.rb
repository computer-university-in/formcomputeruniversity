require 'test_helper'

class WdtmzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wdtmz = wdtmzs(:one)
  end

  test "should get index" do
    get wdtmzs_url
    assert_response :success
  end

  test "should get new" do
    get new_wdtmz_url
    assert_response :success
  end

  test "should create wdtmz" do
    assert_difference('Wdtmz.count') do
      post wdtmzs_url, params: { wdtmz: { branch: @wdtmz.branch, college: @wdtmz.college, email: @wdtmz.email, name: @wdtmz.name, number: @wdtmz.number, profession: @wdtmz.profession, suggestions: @wdtmz.suggestions, title: @wdtmz.title } }
    end

    assert_redirected_to wdtmz_url(Wdtmz.last)
  end

  test "should show wdtmz" do
    get wdtmz_url(@wdtmz)
    assert_response :success
  end

  test "should get edit" do
    get edit_wdtmz_url(@wdtmz)
    assert_response :success
  end

  test "should update wdtmz" do
    patch wdtmz_url(@wdtmz), params: { wdtmz: { branch: @wdtmz.branch, college: @wdtmz.college, email: @wdtmz.email, name: @wdtmz.name, number: @wdtmz.number, profession: @wdtmz.profession, suggestions: @wdtmz.suggestions, title: @wdtmz.title } }
    assert_redirected_to wdtmz_url(@wdtmz)
  end

  test "should destroy wdtmz" do
    assert_difference('Wdtmz.count', -1) do
      delete wdtmz_url(@wdtmz)
    end

    assert_redirected_to wdtmzs_url
  end
end
