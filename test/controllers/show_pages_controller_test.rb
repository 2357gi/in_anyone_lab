require 'test_helper'

class ShowPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Fujihalab inlogger"
  end

  test "should get show" do
    get show_pages_show_url
    assert_response :success
    assert_select "title", "入退室情報 | #{@base_title}"
  end

  test "should get help" do
    get show_pages_help_url
    assert_response :success
    assert_select "title", "ヘルプページ | #{@base_title}"
  end

  test "should get about" do
    get show_pages_about_url
    assert_response :success
    assert_select "title", "このサイトについて | #{@base_title}"
  end
end
