class Slide
	
  def initialize(title = '', subtitle = '', url = '')
    @title = title
    @subtitle = subtitle
    @url = url
  end
  
  def title
    "<h1>#{@title}</h1>"
  end  
  
  def subtitle
    "<h2>#{@subtitle}</h2>"
  end
  
  def image
     "<img src='#{@url}' width='100%'>"
  end
  
  def section
     "<section>#{image}</section>"
  end
  
  def html
      "<div class='slide'>#{title}#{subtitle}#{section}</div>"
  end
  
end


if __FILE__ == $0 then
	
  require 'test/unit'
  
  $image_url = 'htpp://image.com/image'
  $title = 'TITLE'
  $subtitle = 'SUBTITLE'

  class TestsImageSlide < Test::Unit::TestCase

    def setup
    end
    
    def test01
	
      slide = Slide.new(title = $title)
      
      expected = "<h1>#{$title}</h1>"
      assert_equal expected, slide.title

    end  

    def test02
	
      slide = Slide.new(title = $title, subtitle = $subtitle)
      
      expected = "<h2>#{$subtitle}</h2>"
      assert_equal expected, slide.subtitle

    end 
  
    def test03
	
      slide = Slide.new(title = $title, subtitle = $subtitle, url = $image_url)
      
      expected = "<img src='#{$image_url}' width='100%'>"
      assert_equal expected, slide.image

    end
  
    def test04
	
      slide = Slide.new(title = $title, subtitle = $subtitle, url = $image_url)
      
      expected = "<section><img src='#{$image_url}' width='100%'></section>"
      assert_equal expected, slide.section

    end 

    def test05
	
      slide = Slide.new(title = $title, subtitle = $subtitle, url = $image_url)
      
      expected = "<div class='slide'><h1>#{$title}</h1><h2>#{$subtitle}</h2><section><img src='#{$image_url}' width='100%'></section></div>"
      assert_equal expected, slide.html

    end  

    def teardown
    end
  
  end  

end

