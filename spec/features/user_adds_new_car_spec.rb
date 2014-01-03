require 'spec_helper'

describe 'As a car salesperson I want to record a newly acquired car So that I can list it in my lost' do

# Acceptance Criteria:

# I must specify the color, year, mileage of the car.
# Only years from 1980 and above can be specified.
# I can optionally specify a description of the car.
# If I enter all of the required information in the required format, the car is recorded.
# If I do not specify all of the required information in the required formats, the car is not recorded and I am presented with errors.
# Upon successfully creating a car, I am redirected so that I can create another car.

  context "with_valid_attributes" do
    it 'creates a new car' do
      color = 'red'
      year = 1999
      mileage = 20000
      # description ='words that describe'

      visit new_car_path
      fill_in "Color", with: color
      fill_in "Year", with: year
      fill_in "Mileage", with: mileage
      click_on "Create Car"

      expect(page).to have_content color
      expect(page).to have_content year
      expect(page).to have_content mileage
    end
  end

  context "with invalid attributes" do
    it 'sees applicable errors' do
      visit new_car_path

      click_on "Create New Car"

      expect(page).to have_content "Color can't be blank"
      expect(page).to have_content "Year can't be blank"
      expect(page).to have_content "Mileage can't be blank"

    end
  end
end

