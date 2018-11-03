require "application_system_test_case"

class OrderedProductsTest < ApplicationSystemTestCase
  setup do
    @ordered_product = ordered_products(:one)
  end

  test "visiting the index" do
    visit ordered_products_url
    assert_selector "h1", text: "Ordered Products"
  end

  test "creating a Ordered product" do
    visit ordered_products_url
    click_on "New Ordered Product"

    fill_in "Cart", with: @ordered_product.cart_id
    fill_in "Img", with: @ordered_product.img
    fill_in "Name", with: @ordered_product.name
    fill_in "Price", with: @ordered_product.price
    click_on "Create Ordered product"

    assert_text "Ordered product was successfully created"
    click_on "Back"
  end

  test "updating a Ordered product" do
    visit ordered_products_url
    click_on "Edit", match: :first

    fill_in "Cart", with: @ordered_product.cart_id
    fill_in "Img", with: @ordered_product.img
    fill_in "Name", with: @ordered_product.name
    fill_in "Price", with: @ordered_product.price
    click_on "Update Ordered product"

    assert_text "Ordered product was successfully updated"
    click_on "Back"
  end

  test "destroying a Ordered product" do
    visit ordered_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ordered product was successfully destroyed"
  end
end
