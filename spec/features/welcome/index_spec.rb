require 'rails_helper'

RSpec.describe "welcome page" do
    
    it 'has my name, introduction and home button' do
        visit root_path
        expect(page).to have_content('Antonio')
        expect(page).to have_content('Software Developer')

        click_button 'Home'
        expect(current_path).to eq(root_path)
    end
end
