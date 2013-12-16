require 'rspec'
require 'capybara/rspec'

require_relative '../../controllers/slideshow.rb'

Capybara.app = Sinatra::Application.new

set :public_folder, '../../views'
set :logging, false

ATTENDEE_SLIDESHOW_SELECTION = '/'
TEACHER_SLIDESHOW_SELECTION = '/teacher-x1973'

describe 'Slide Evaluations', :type => :feature, :js => true do
  
  before(:each) do
    $db.execute_sql("delete from polls") 
  end
  
  it 'should evaluate slide 20' do

    slide="slide_20"

    #~ go_to(:slide_20)
    visit TEACHER_SLIDESHOW_SELECTION
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ attendee.clik(:star_1)
    visit ATTENDEE_SLIDESHOW_SELECTION
    find(:css, 'div.presentation').native.send_key(:space)
    find("#select_input_1_to_proposition_1").click
    find("#select_input_1_to_proposition_2").click
    find("#select_input_1_to_proposition_3").click
    find("#select_input_1_to_proposition_4").click
    find("#select_input_1_to_proposition_5").click
    find("#select_input_1_to_proposition_6").click
    find("#select_input_1_to_proposition_7").click
    find("#select_input_1_to_proposition_8").click
    find("#select_input_1_to_proposition_9").click
    find("#select_input_1_to_proposition_10").click
    find("#select_input_1_to_proposition_11").click
    find("#select_input_1_to_proposition_12").click
    find("#select_input_1_to_proposition_13").click
    find("#select_input_1_to_proposition_14").click
    find("#select_input_1_to_proposition_15").click
    find("#select_input_1_to_proposition_16").click
    
    expect(db_selection("#{slide}_evaluation").join).to eq "proposition_1proposition_2proposition_3proposition_4proposition_5proposition_6proposition_7proposition_8proposition_9proposition_10proposition_11proposition_12proposition_13proposition_14proposition_15proposition_16"
    
  end
  
  after(:each) do
    #~ $db.execute_sql("delete from polls") 
  end  
  
end  

# ---- HELPER

def db_selection(evaluation)
  $db.execute_sql("select * from polls").to_a.map { |tuple| tuple["question_id"] }
end
