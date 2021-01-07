require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Access", with: @post.access
    fill_in "Atmosphere", with: @post.atmosphere
    fill_in "Cost", with: @post.cost
    fill_in "Image", with: @post.image
    fill_in "Review", with: @post.review
    fill_in "Service", with: @post.service
    fill_in "Store name", with: @post.store_name
    fill_in "Taste", with: @post.taste
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Access", with: @post.access
    fill_in "Atmosphere", with: @post.atmosphere
    fill_in "Cost", with: @post.cost
    fill_in "Image", with: @post.image
    fill_in "Review", with: @post.review
    fill_in "Service", with: @post.service
    fill_in "Store name", with: @post.store_name
    fill_in "Taste", with: @post.taste
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
