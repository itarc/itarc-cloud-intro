require 'rspec'
require 'capybara/rspec'

require_relative '../../controllers/slideshow.rb'

Capybara.app = Sinatra::Application.new

set :public_folder, '../../views'
set :logging, false

ATTENDEE_SLIDESHOW_EVALUATION = '/'
TEACHER_SLIDESHOW_EVALUATION = '/teacher-x1973'

describe 'Slide Evaluations', :type => :feature, :js => true do
  
  before(:all) do
    $db.execute_sql("delete from teacher_current_slide") 
    $db.execute_sql("insert into teacher_current_slide values(0)") 
  end

  before(:each) do
    $db.execute_sql("delete from polls") 
  end
  
  it 'should evaluate slide 4' do
	  
    slide="slide_4"

    #~ go_to(:slide_4)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end    
  
  it 'should evaluate slide 5' do

    slide="slide_5"

    #~ go_to(:slide_5)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end  
  
  it 'should evaluate slide 6' do

    slide="slide_6"

    #~ #go_to(:slide_6)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end  
  
  it 'should evaluate slide 7' do

    slide="slide_7"

    #~ #go_to(:slide_7)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end  
  
  it 'should evaluate slide 8' do

    slide="slide_8"

    #~ #go_to(:slide_8)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end  
  
  it 'should evaluate slide 9' do

    slide="slide_9"

    #~ #go_to(:slide_9)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end  
  
  it 'should evaluate slide 10' do

    slide="slide_10"

    #~ #go_to(:slide_10)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end  
  
  it 'should evaluate slide 11' do

    slide="slide_11"

    #~ #go_to(:slide_11)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end  
  
  it 'should evaluate slide 12' do

    slide="slide_12"

    #~ #go_to(:slide_2)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end  
  
  it 'should evaluate slide 13' do

    slide="slide_13"

    #~ #go_to(:slide_13)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end  
  
  it 'should evaluate slide 14' do

    slide="slide_14"

    #~ #go_to(:slide_14)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end

  it 'should evaluate slide 15' do

    slide="slide_15"

    #~ #go_to(:slide_15)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end
  
  it 'should evaluate slide 16' do

    slide="slide_16"

    #~ #go_to(:slide_16)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end  
  
  it 'should evaluate slide 17' do

    slide="slide_17"

    #~ #go_to(:slide_17)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end  

  it 'should evaluate slide 18' do

    slide="slide_18"

    #~ #go_to(:slide_18)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end  
  
  it 'should evaluate slide 19' do

    slide="slide_19"

    #~ #go_to(:slide_19)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_#{slide}_evaluation").click
    find("#rating_input_2_to_#{slide}_evaluation").click
    find("#rating_input_3_to_#{slide}_evaluation").click
    find("#rating_input_4_to_#{slide}_evaluation").click 
    find("#rating_input_5_to_#{slide}_evaluation").click
   
    
    expect(db_rating("#{slide}_evaluation").join).to eq "12345"
    
  end
  
  it 'should evaluate slide 21 (last slide)' do

    slide="slide_21"

    #~ #go_to(:slide_21)
    visit TEACHER_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ #attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_EVALUATION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#rating_input_1_to_global_evaluation").click
    find("#rating_input_2_to_global_evaluation").click
    find("#rating_input_3_to_global_evaluation").click
    find("#rating_input_4_to_global_evaluation").click 
    find("#rating_input_5_to_global_evaluation").click
   
    
    expect(db_rating("global_evaluation").join).to eq "12345"
    
  end  
  
  after(:each) do
    $db.execute_sql("delete from polls") 
  end  
  
  after(:all) do
    $db.execute_sql("delete from teacher_current_slide")     
  end    
  
end

# ---- HELPER

def db_rating(evaluation)
  $db.execute_sql("select * from polls where question_id = '#{evaluation}'").to_a.map { |tuple| tuple["response"] }
end

  
