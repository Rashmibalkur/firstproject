require 'test_helper'

class BoksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bok = boks(:one)
  end

  test "should get index" do
    get boks_url
    assert_response :success
  end

  test "should get new" do
    get new_bok_url
    assert_response :success
  end

  test "should create bok" do
    assert_difference('Bok.count') do
      post boks_url, params: { bok: { author_id: @bok.author_id, name: @bok.name, pt: @bok.pt } }
    end

    assert_redirected_to bok_url(Bok.last)
  end

  test "should show bok" do
    get bok_url(@bok)
    assert_response :success
  end

  test "should get edit" do
    get edit_bok_url(@bok)
    assert_response :success
  end

  test "should update bok" do
    patch bok_url(@bok), params: { bok: { author_id: @bok.author_id, name: @bok.name, pt: @bok.pt } }
    assert_redirected_to bok_url(@bok)
  end

  test "should destroy bok" do
    assert_difference('Bok.count', -1) do
      delete bok_url(@bok)
    end

    assert_redirected_to boks_url
  end
end
