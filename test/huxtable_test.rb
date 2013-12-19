require 'test_helper'

class HuxtableRailsTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test "engine is loaded" do
    assert_equal ::Rails::Engine, Huxtable::Engine.superclass
  end

  test "fonts are served" do
    get "/assets/bitsans-300.eot"
    assert_response :success
    get "/assets/bitsans-500.eot"
    assert_response :success
    get "/assets/bitsans-700.eot"
    assert_response :success
    get "/assets/ss-social-circle.eot"
    assert_response :success
    get "/assets/ss-social-regular.eot"
    assert_response :success
    get "/assets/ss-standard.eot"
    assert_response :success
    get "/assets/ss-symbolicons-block.eot"
    assert_response :success
  end

  test "stylesheets are served" do
    get "/assets/huxtable.css"
    assert_huxtable(response)
  end

  test "stylesheets contain asset pipeline references to fonts" do
    get "/assets/huxtable.css"
    assert_match "/assets/bitsans-300.eot",  response.body
    assert_match "/assets/bitsans-300.woff", response.body
    assert_match "/assets/bitsans-300.ttf",  response.body
    assert_match "/assets/bitsans-300.svg",  response.body
  end

  test "stylesheet is available in a css sprockets require" do
    get "/assets/sprockets-require.css"
    assert_huxtable(response)
  end

  test "stylesheet is available in a sass import" do
    get "/assets/sass-import.css"
    assert_huxtable(response)
  end

  test "stylesheet is available in a scss import" do
    get "/assets/scss-import.css"
    assert_huxtable(response)
  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
  end

  def assert_huxtable(response)
    assert_response :success
    assert_match(/font-family:\s*'Bit Sans';/, response.body)
  end
end