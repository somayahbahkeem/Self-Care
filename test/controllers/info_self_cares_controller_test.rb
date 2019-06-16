require 'test_helper'

class InfoSelfCaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @info_self_care = info_self_cares(:one)
  end

  test "should get index" do
    get info_self_cares_url
    assert_response :success
  end

  test "should get new" do
    get new_info_self_care_url
    assert_response :success
  end

  test "should create info_self_care" do
    assert_difference('InfoSelfCare.count') do
      post info_self_cares_url, params: { info_self_care: { Care-Name: @info_self_care.Care-Name, Date-To: @info_self_care.Date-To, Date-frome: @info_self_care.Date-frome, Location: @info_self_care.Location, Reminder-Time: @info_self_care.Reminder-Time, Time: @info_self_care.Time, period: @info_self_care.period } }
    end

    assert_redirected_to info_self_care_url(InfoSelfCare.last)
  end

  test "should show info_self_care" do
    get info_self_care_url(@info_self_care)
    assert_response :success
  end

  test "should get edit" do
    get edit_info_self_care_url(@info_self_care)
    assert_response :success
  end

  test "should update info_self_care" do
    patch info_self_care_url(@info_self_care), params: { info_self_care: { Care-Name: @info_self_care.Care-Name, Date-To: @info_self_care.Date-To, Date-frome: @info_self_care.Date-frome, Location: @info_self_care.Location, Reminder-Time: @info_self_care.Reminder-Time, Time: @info_self_care.Time, period: @info_self_care.period } }
    assert_redirected_to info_self_care_url(@info_self_care)
  end

  test "should destroy info_self_care" do
    assert_difference('InfoSelfCare.count', -1) do
      delete info_self_care_url(@info_self_care)
    end

    assert_redirected_to info_self_cares_url
  end
end
