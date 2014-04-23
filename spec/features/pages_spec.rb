require 'spec_helper'

feature 'homepage' do
  before { visit root_path }

  it 'should have appropriate title' do
    expect(page).to have_title "Nonprofits"
  end

  it 'should have header "Nonprofits"' do
    expect(page).to have_content "Nonprofits"
  end

  describe 'new nonprofit' do
    it 'should create a new nonprofit with valid information' do
      fill_in "Name", with: "Josh's Kitten Rescue"
      click_button "Create"
      expect(page).to have_content "Josh's Kitten Rescue"
    end

    it 'should not create a new nonprofit if information is invalid' do
      fill_in "Name", with: ""
      click_button "Create"
      expect(page).to have_content "Oops, something went wrong."
    end
  end
end

feature 'nonprofit show page' do
  before { create_nonprofit }
  before { visit nonprofit_path(@nonprofit) }

  it 'should have the appropriate title' do
    expect(page).to have_title "#{@nonprofit.name} | Nonprofits"
  end

  it 'should correctly update a non profits name!' do
    fill_in "Name", with: "Brentwood's Tree Rescue"
    click_button "Update"
    expect(page).to have_content "Nonprofit was updated."
  end

  it 'should throw an error if you try to update with an empty name field' do
    fill_in "Name", with: ""
    click_button "Update"
    expect(page).to have_content "Oops, something went wrong. Try again."
  end

  it 'should delete a nonprofit if the delete link is clicked' do
    click_link "Delete Nonprofit"
    expect(page).not_to have_content "Read Books"
  end
end
