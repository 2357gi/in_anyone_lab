require 'test_helper'

class ShowPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get show_pages_show_url
    assert_response :success
    assert_select "title", "入退室情報 | Fujihalab logger"
  end

  test "should get help" do
    get show_pages_help_url
    assert_response :success
    assert_select "title", "ヘルプページ | Fujihalab logger"
  end

  test "should get about" do
    get show_pages_about_url
    assert_response :success
    assert_select "title", "このサイトについて | Fujihalab logger"
  end
end
