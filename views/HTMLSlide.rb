class Slide
	
  attr_accessor :title, :subtitle, :image_url, :video_url, :text, :question
  
  def html_title
    "<h1>#{@title}</h1>" if @title
  end  
  
  def html_subtitle
    "<h2>#{@subtitle}</h2>" if @subtitle
  end
  
  def html_image
     "<img src='#{@image_url}' width='100%'>" if @image_url
  end
  
  def html_video
    "<video src='#{@video_url}' controls></video>" if @video_url
  end
  
  def html_text
    "<h3>#{@text}</h3>" if @text
  end  
  
  def html_question
    "<div><div class='poll_question'>#{@question}</div></div>" if @question
  end
  
  def html_section
     "<section>#{html_text || html_image || html_video || html_question}</section>" 
  end
  
  def html
      "<div class='slide'>#{html_title}#{html_subtitle}#{html_section}</div>"
  end
  
end


if __FILE__ == $0 then
	
  require 'test/unit'
  
  $image_url = 'htpp://image.com/image'
  $video_url = 'htpp://video.com/image'
  $title = 'TITLE'
  $subtitle = 'SUBTITLE'
  $text = "TEXTE"
  $question = "Question ?"

  class TestImageSlide < Test::Unit::TestCase

    def setup
    end
    
    def test010
	
      slide = Slide.new
      slide.title = $title
      
      expected = "<h1>#{$title}</h1>"
      assert_equal expected, slide.html_title

    end  

    def test020
	
      slide = Slide.new
      slide.subtitle = $subtitle
      
      expected = "<h2>#{$subtitle}</h2>"
      assert_equal expected, slide.html_subtitle

    end 
  
    def test030
	
      slide = Slide.new
      slide.image_url = $image_url
      
      expected = "<img src='#{$image_url}' width='100%'>"
      assert_equal expected, slide.html_image

    end

    def test040
	
      slide = Slide.new
      slide.video_url = $video_url
      
      expected = "<video src='#{$video_url}' controls></video>"
      assert_equal expected, slide.html_video

    end   

    def test050
	
      slide = Slide.new
      slide.text = $text
      
      expected = "<h3>#{$text}</h3>"
      assert_equal expected, slide.html_text

    end
    
    def test051
	
      slide = Slide.new
      slide.question = $question
      
      expected = "<div><div class='poll_question'>#{$question}</div></div>"
      assert_equal expected, slide.html_question

    end
    
    def test060 # TEST A REFAIRE : il tester la construction de la section sans retester tous le cas de fugure avec image, video, text, ...
	
      slide = Slide.new

      expected = "<section></section>"
      assert_equal expected, slide.html_section

    end    

    def test100 # TEST A REFAIRE : il tester la construction du slide sans retester tous le cas de fugure avec image, video, text, ...
	
      slide = Slide.new
      slide.title = $title
      slide.subtitle = $subtitle
      slide.image_url = $image_url
      
      expected = "<div class='slide'><h1>#{$title}</h1><h2>#{$subtitle}</h2><section><img src='#{$image_url}' width='100%'></section></div>"
      assert_equal expected, slide.html

    end  
    
    def test110 # TEST A REFAIRE : il tester la construction du slide sans retester tous le cas de fugure avec image, video, text, ...
	
      slide = Slide.new
      slide.title = $title
      slide.subtitle = $subtitle
      slide.video_url = $video_url
      
      expected = "<div class='slide'><h1>#{$title}</h1><h2>#{$subtitle}</h2><section><video src='#{$video_url}' controls></video></section></div>"
      assert_equal expected, slide.html

    end    
    
    def test120 # TEST A REFAIRE : il tester la construction du slide sans retester tous le cas de fugure avec image, video, text, ...
	
      slide = Slide.new
      slide.text = $text
      
      expected = "<div class='slide'><section><h3>#{$text}</h3></section></div>"
      assert_equal expected, slide.html

    end 

    def test130 # TEST A REFAIRE : il tester la construction du slide sans retester tous le cas de fugure avec image, video, text, ...
	
      slide = Slide.new
      slide.question = $question
      
      expected = "<div class='slide'><section><div><div class='poll_question'>#{$question}</div></div></section></div>"
      assert_equal expected, slide.html

    end

    def teardown
    end
  
  end  

end