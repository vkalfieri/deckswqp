require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_url
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post listings_url, params: { listing: { card_name: @listing.card_name, card_number: @listing.card_number, card_set: @listing.card_set, category_id_id: @listing.category_id_id, condition_id_id: @listing.condition_id_id, delivery_id_id: @listing.delivery_id_id, description: @listing.description, listing_id: @listing.listing_id, price: @listing.price, seller_id_id: @listing.seller_id_id, stripe_id: @listing.stripe_id, subcategory_id_id: @listing.subcategory_id_id, trade_id_id: @listing.trade_id_id, user_id_id: @listing.user_id_id } }
    end

    assert_redirected_to listing_url(Listing.last)
  end

  test "should show listing" do
    get listing_url(@listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_url(@listing)
    assert_response :success
  end

  test "should update listing" do
    patch listing_url(@listing), params: { listing: { card_name: @listing.card_name, card_number: @listing.card_number, card_set: @listing.card_set, category_id_id: @listing.category_id_id, condition_id_id: @listing.condition_id_id, delivery_id_id: @listing.delivery_id_id, description: @listing.description, listing_id: @listing.listing_id, price: @listing.price, seller_id_id: @listing.seller_id_id, stripe_id: @listing.stripe_id, subcategory_id_id: @listing.subcategory_id_id, trade_id_id: @listing.trade_id_id, user_id_id: @listing.user_id_id } }
    assert_redirected_to listing_url(@listing)
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing)
    end

    assert_redirected_to listings_url
  end
end
