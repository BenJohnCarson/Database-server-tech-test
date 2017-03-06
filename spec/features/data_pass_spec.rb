feature 'Passing data' do
  scenario 'Data is passed in via the url' do
    visit('/set?somekey=somevalue')
    expect(page).to have_content 'Hello'
  end
end