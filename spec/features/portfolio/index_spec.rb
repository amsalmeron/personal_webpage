require 'rails_helper'

RSpec.describe "portfolio page" do
    
    it 'has my a description of a project in portfolio: Dude, Hows My City?' do
        visit portfolio_index_path
        expect(current_path).to  eq('/portfolio')
        expect(page).to have_content("Dude, How's My City?")

        click_button 'Home'
        expect(current_path).to eq(root_path)
    end

    it "has a nav bar including links to home and portfolio" do
        visit portfolio_index_path

        click_button 'Home'
        expect(current_path).to eq('/') 

        visit portfolio_index_path

        click_button 'Portfolio'
        expect(current_path).to eq('/portfolio') 
    end
    
end
