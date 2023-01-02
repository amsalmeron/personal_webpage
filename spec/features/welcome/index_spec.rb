require 'rails_helper'

RSpec.describe "welcome page" do
    
    it 'has my name, introduction and home button' do
        visit root_path
        expect(page).to have_content('Antonio')
        expect(page).to have_content('Software Developer')

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
