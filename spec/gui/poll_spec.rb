require 'rspec'
require 'capybara/rspec'

require_relative '../../controllers/slideshow.rb'

Capybara.app = Sinatra::Application.new

set :public_folder, '../../views'
set :logging, false

ATTENDEE_SLIDESHOW_POLL = '/'
TEACHER_SLIDESHOW_POLL = '/teacher-x1973'

describe 'Poll with TWO QUESTIONS and only ONE ATTENDEE', :type => :feature, :js => true do
  
  before(:each) do
    $db.execute_sql("delete from polls") 
  end
  
  it 'should display oui : 100%, non : 0% / oui : 0%, non : 0%' do

    #~ go_to(:slide_1)
    visit TEACHER_SLIDESHOW_POLL
    
    #~ go_to(:slide_2) 
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ attendee.clik(Oui)
    #~ attendee.clik(Non)
    visit ATTENDEE_SLIDESHOW_POLL
    find(:css, 'div.presentation').native.send_key(:space)
    within('#question_1') do
      find("label", :text => "Oui").click
    end
    
    #~ go_to(:slide_3)
    visit TEACHER_SLIDESHOW_POLL    
    find(:css, 'div.presentation').native.send_key(:space)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    within("#result_1") do
      expect(page).to have_content "Oui (100%)"
      expect(page).to have_content "Non (0%)"
    end
    within("#result_2") do
      expect(page).to have_content "Oui (0%)"
      expect(page).to have_content "Non (0%)"
    end
    
    visit ATTENDEE_SLIDESHOW_POLL
    find(:css, 'div.presentation').native.send_key(:space)
    within("#result_1") do
      expect(page).to have_content "Oui (100%)"
      expect(page).to have_content "Non (0%)"
    end
    within("#result_2") do
      expect(page).to have_content "Oui (0%)"
      expect(page).to have_content "Non (0%)"
    end  

  end

  it 'should display oui : 0%, non : 100% / oui : 0%, non : 0%' do

    #~ go_to(:slide_1)
    visit TEACHER_SLIDESHOW_POLL
    
    #~ go_to(:slide_2) 
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ attendee.clik(Oui)
    #~ attendee.clik(Non)
    visit ATTENDEE_SLIDESHOW_POLL
    find(:css, 'div.presentation').native.send_key(:space)
    within('#question_1') do
      find("label", :text => "Non").click
    end
    
    #~ go_to(:slide_3)
    visit TEACHER_SLIDESHOW_POLL    
    find(:css, 'div.presentation').native.send_key(:space)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    within("#result_1") do
      expect(page).to have_content "Oui (0%)"
      expect(page).to have_content "Non (100%)"
    end
    within("#result_2") do
      expect(page).to have_content "Oui (0%)"
      expect(page).to have_content "Non (0%)"
    end
    
    visit ATTENDEE_SLIDESHOW_POLL
    find(:css, 'div.presentation').native.send_key(:space)
    within("#result_1") do
      expect(page).to have_content "Oui (0%)"
      expect(page).to have_content "Non (100%)"
    end
    within("#result_2") do
      expect(page).to have_content "Oui (0%)"
      expect(page).to have_content "Non (0%)"
    end  

  end

  it 'should display oui : 100%, non : 0% / oui : 100%, non : 0%' do

    #~ go_to(:slide_1)
    visit TEACHER_SLIDESHOW_POLL
    
    #~ go_to(:slide_2) 
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ attendee.clik(Oui)
    #~ attendee.clik(Non)
    visit ATTENDEE_SLIDESHOW_POLL
    find(:css, 'div.presentation').native.send_key(:space)
    within('#question_1') do
      find("label", :text => "Oui").click
    end
    within('#question_2') do
      find("label", :text => "Oui").click
    end    
    
    #~ go_to(:slide_3)
    visit TEACHER_SLIDESHOW_POLL    
    find(:css, 'div.presentation').native.send_key(:space)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    within("#result_1") do
      expect(page).to have_content "Oui (100%)"
      expect(page).to have_content "Non (0%)"
    end
    within("#result_2") do
      expect(page).to have_content "Oui (100%)"
      expect(page).to have_content "Non (0%)"
    end 

  end
  
  it 'should display oui : 100%, non : 0% / oui : 0%, non : 100%' do

    #~ go_to(:slide_1)
    visit TEACHER_SLIDESHOW_POLL
    
    #~ go_to(:slide_2) 
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ attendee.clik(Oui)
    #~ attendee.clik(Non)
    visit ATTENDEE_SLIDESHOW_POLL
    find(:css, 'div.presentation').native.send_key(:space)
    within('#question_1') do
      find("label", :text => "Oui").click
    end
    within('#question_2') do
      find("label", :text => "Non").click
    end    
    
    #~ go_to(:slide_3)
    visit TEACHER_SLIDESHOW_POLL    
    find(:css, 'div.presentation').native.send_key(:space)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    within("#result_1") do
      expect(page).to have_content "Oui (100%)"
      expect(page).to have_content "Non (0%)"
    end
    within("#result_2") do
      expect(page).to have_content "Oui (0%)"
      expect(page).to have_content "Non (100%)"
    end 

  end  
  
  it 'should display oui : 0%, non : 100% / oui : 100%, non : 0%' do

    #~ go_to(:slide_1)
    visit TEACHER_SLIDESHOW_POLL
    
    #~ go_to(:slide_2) 
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ attendee.clik(Oui)
    #~ attendee.clik(Non)
    visit ATTENDEE_SLIDESHOW_POLL
    find(:css, 'div.presentation').native.send_key(:space)
    within('#question_1') do
      find("label", :text => "Non").click
    end
    within('#question_2') do
      find("label", :text => "Oui").click
    end    
    
    #~ go_to(:slide_3)
    visit TEACHER_SLIDESHOW_POLL    
    find(:css, 'div.presentation').native.send_key(:space)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    within("#result_1") do
      expect(page).to have_content "Oui (0%)"
      expect(page).to have_content "Non (100%)"
    end
    within("#result_2") do
      expect(page).to have_content "Oui (100%)"
      expect(page).to have_content "Non (0%)"
    end 

  end   
  
  it 'should display oui : 0%, non : 100% / oui : 0%, non : 100%' do

    #~ go_to(:slide_1)
    visit TEACHER_SLIDESHOW_POLL
    
    #~ go_to(:slide_2) 
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    
    #~ attendee.clik(Oui)
    #~ attendee.clik(Non)
    visit ATTENDEE_SLIDESHOW_POLL
    find(:css, 'div.presentation').native.send_key(:space)
    within('#question_1') do
      find("label", :text => "Non").click
    end
    within('#question_2') do
      find("label", :text => "Non").click
    end    
    
    #~ go_to(:slide_3)
    visit TEACHER_SLIDESHOW_POLL    
    find(:css, 'div.presentation').native.send_key(:space)
    find(:css, 'div.presentation').native.send_key(:arrow_right)
    within("#result_1") do
      expect(page).to have_content "Oui (0%)"
      expect(page).to have_content "Non (100%)"
    end
    within("#result_2") do
      expect(page).to have_content "Oui (0%)"
      expect(page).to have_content "Non (100%)"
    end 

  end    
  
  after(:each) do
    $db.execute_sql("delete from polls") 
  end  
  
end

  
