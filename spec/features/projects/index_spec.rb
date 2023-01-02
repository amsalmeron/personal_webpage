require 'rails_helper'

RSpec.describe "projects page" do
    
    it 'has my a description of a project in projects: Dude, Hows My City?' do
        visit projects_path
        expect(current_path).to  eq('/projects')
        expect(page).to have_content("Dude, How's My City?")

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
