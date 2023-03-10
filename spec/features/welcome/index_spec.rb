require 'rails_helper'

RSpec.describe "welcome page" do
    
    it 'has my name, introduction and home button' do
        visit root_path
        expect(page).to have_content('Antonio')
        expect(page).to have_content('Software Developer')

        click_button 'Home'
        expect(current_path).to eq(root_path)
    end

    it "has a nav bar including links to home and projects" do
        visit projects_path

        click_button 'Home'
        expect(current_path).to eq('/') 

        visit projects_path

        click_button 'Projects'
        expect(current_path).to eq('/projects') 
    end
end
