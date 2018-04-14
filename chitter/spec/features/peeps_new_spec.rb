feature 'adding new peep' do
  scenario 'Can see new peeps on home page' do
      visit "/"
      fill_in "new_peep", with: "Peep Peep!"
      click_button "Peep"
      expect(page).to have_content "Peep Peep!"
  end
end

