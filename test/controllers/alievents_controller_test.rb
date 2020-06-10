require 'test_helper'

class AlieventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alievent = alievents(:one)
  end

  test "should get index" do
    get alievents_url
    assert_response :success
  end

  test "should get new" do
    get new_alievent_url
    assert_response :success
  end

  test "should create alievent" do
    assert_difference('Alievent.count') do
      post alievents_url, params: { alievent: { branch: @alievent.branch, company: @alievent.company, email: @alievent.email, name: @alievent.name, number: @alievent.number, suggestions: @alievent.suggestions } }
    end

    assert_redirected_to alievent_url(Alievent.last)
  end

  test "should show alievent" do
    get alievent_url(@alievent)
    assert_response :success
  end

  test "should get edit" do
    get edit_alievent_url(@alievent)
    assert_response :success
  end

  test "should update alievent" do
    patch alievent_url(@alievent), params: { alievent: { branch: @alievent.branch, company: @alievent.company, email: @alievent.email, name: @alievent.name, number: @alievent.number, suggestions: @alievent.suggestions } }
    assert_redirected_to alievent_url(@alievent)
  end

  test "should destroy alievent" do
    assert_difference('Alievent.count', -1) do
      delete alievent_url(@alievent)
    end

    assert_redirected_to alievents_url
  end
end
