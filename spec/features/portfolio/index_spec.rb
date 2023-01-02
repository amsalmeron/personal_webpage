require 'rails_helper'

RSpec.describe "portfolio page" do
    
    it 'has my a description of a project in portfolio: Dude, Hows My City?' do
        visit portfolio_path

        expect(page).to have_content("Dude, How's My City?") 
    end
end
