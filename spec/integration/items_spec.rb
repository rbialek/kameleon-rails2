require 'spec_helper'

describe 'Items' do
  context "Check basic item link", :js => false do
    it "sees new item link" do
      visit "/items"
      see "New item"
    end
    it "uses new item link" do
      click "New item"
      see "Title"
      click "Create"
      see "error"
      fill_in "Some Title" => "item_title"
      click "Create"
      not_see "error"
      see "Item was successfully created."
    end
  end

end