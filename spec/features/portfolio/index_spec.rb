require 'rails_helper'

RSpec.describe "portfolio page" do
    
    it 'has my a description of a project in portfolio: Dude, Hows My City?' do
        visit portfolio_index_path
        expect(current_path).to  eq('/portfolio')
        expect(page).to have_content("Dude, How's My City?") 
    end
end
