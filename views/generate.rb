#encoding: utf-8
require 'yaml'

presentation_model = YAML.load_file('presentation.yaml')

puts "
<html>
  <head>
    <link href='slideshow.css' rel='stylesheet' media='screen'/>
    <meta name='viewport' content='user-scalable=no,width=device-width' />
  </head>
  <body>
  
    <div class='presentation'>
    
"

presentation_model.each do |slide_model|

  require_relative 'HTMLSlide.rb'

  title = slide_model["slide"][0]["title"]
  subtitle = slide_model["slide"][1]["subtitle"]
  image = slide_model["slide"][2]["image"]

  puts " "*6 + Slide.new(title = title, subtitle = subtitle, url = image).html

end

puts "
    </div> <!--presentation-->

    <script src='slideshow.js'></script>
    <script src='slideshow-teacher.js'></script>
    
  </body>
</html>
"
