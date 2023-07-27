require "test_helper"

class CraziesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crazy = crazies(:one)
  end

  test "should get index" do
    get crazies_url
    assert_response :success
  end

  test "should get new" do
    get new_crazy_url
    assert_response :success
  end

  test "should create crazy" do
    assert_difference("Crazy.count") do
      post crazies_url, params: { crazy: { age: @crazy.age, name: @crazy.name } }
    end

    assert_redirected_to crazy_url(Crazy.last)
  end

  test "should show crazy" do
    get crazy_url(@crazy)
    assert_response :success
  end

  test "should get edit" do
    get edit_crazy_url(@crazy)
    assert_response :success
  end

  test "should update crazy" do
    patch crazy_url(@crazy), params: { crazy: { age: @crazy.age, name: @crazy.name } }
    assert_redirected_to crazy_url(@crazy)
  end

  test "should destroy crazy" do
    assert_difference("Crazy.count", -1) do
      delete crazy_url(@crazy)
    end

    assert_redirected_to crazies_url
  end
end
