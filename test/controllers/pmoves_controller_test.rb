require 'test_helper'

class PmovesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmove = pmoves(:one)
  end

  test "should get index" do
    get pmoves_url
    assert_response :success
  end

  test "should get new" do
    get new_pmove_url
    assert_response :success
  end

  test "should create pmove" do
    assert_difference('Pmove.count') do
      post pmoves_url, params: { pmove: { move_id: @pmove.move_id, pokemon_id: @pmove.pokemon_id } }
    end

    assert_redirected_to pmove_url(Pmove.last)
  end

  test "should show pmove" do
    get pmove_url(@pmove)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmove_url(@pmove)
    assert_response :success
  end

  test "should update pmove" do
    patch pmove_url(@pmove), params: { pmove: { move_id: @pmove.move_id, pokemon_id: @pmove.pokemon_id } }
    assert_redirected_to pmove_url(@pmove)
  end

  test "should destroy pmove" do
    assert_difference('Pmove.count', -1) do
      delete pmove_url(@pmove)
    end

    assert_redirected_to pmoves_url
  end
end
