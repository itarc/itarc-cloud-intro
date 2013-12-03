#encoding: utf-8
require 'yaml'

presentation_model = YAML.load_file('presentation.yaml')

require_relative 'HTMLSlide.rb'

puts "
<html>
  <head>
    <link href='slideshow.css' rel='stylesheet' media='screen'/>
    <meta name='viewport' content='user-scalable=no,width=device-width' />
    <meta charset='utf8'>
  </head>
  <body>
  
    <div class='presentation'>
    
"

presentation_model.each do |slide_model|

  slide = Slide.new
  
  slide_model["slide"].each do |slide_property|

    slide_property_name = slide_property.keys[0]
    slide_property_value = slide_property[slide_property_name]
    
    if slide_property_name != "poll" then
	  
      eval 'slide.' + slide_property_name + ' = "' + slide_property_value + '"'
      
    else
	
	slide_property_name = "question"
	slide_property_value = slide_property_value[0][slide_property_name]
    
        eval 'slide.' + slide_property_name + ' = "' + slide_property_value + '"'

    end
    
  end

  puts " "*6 + slide.html

end

puts "
    </div> <!--presentation-->

    <script src='slideshow.js'></script>
    <script src='slideshow-teacher.js'></script>
    
  </body>
</html>
"
