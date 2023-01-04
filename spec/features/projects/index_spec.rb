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
    
    it "includes sections for each language and project title within section" do
        visit projects_path
        expect(page).to have_content("Ruby")
        expect(page).to have_content("Dude, How's My City?")
        expect(page).to have_content("Waste No More")
        expect(page).to have_content("Java")
        expect(page).to have_content("Social API")
        expect(page).to have_content("Javascript")
        expect(page).to have_content("Python")

        expect("Dude, How's My City?").to appear_before("Waste No More")
        expect("Waste No More").to appear_before("Java")
        expect("Java").to appear_before("Social API")
        expect("Social API").to appear_before("Javascript")
    end
    
end
