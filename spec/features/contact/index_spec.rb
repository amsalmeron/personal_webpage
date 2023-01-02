require 'rails_helper'

RSpec.describe "Information Page" do
    it "has my name displayed with navbar" do
        visit contact_index_path

        expect(page).to have_content("mr.tonyboi@gmail.com")
    end
    
   it "has a nav bar including links to home, projects, info and contact" do
        visit contact_index_path
        click_button 'Home'
        expect(current_path).to eq('/') 

        visit contact_index_path
        click_button 'Info'
        expect(current_path).to eq('/info')

        visit contact_index_path
        click_button 'Contact'
        expect(current_path).to eq('/contact')

        visit contact_index_path
        click_button 'Projects'
        expect(current_path).to eq('/projects')
    end
end