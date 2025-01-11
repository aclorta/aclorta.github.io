require 'minitest/autorun'
require 'jekyll'

class TestSample < Minitest::Test
  def setup
    @site = Jekyll::Site.new(Jekyll.configuration)
    @site.process
  end

  def test_homepage_title
    homepage = @site.pages.find { |page| page.url == '/' }
    assert_equal 'Adam Lorta', homepage.data['title']
  end
end