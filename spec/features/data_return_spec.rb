feature 'Returning data' do
  scenario 'Data is requested via the url' do
    visit('/set?somekey=somevalue')
    visit('/get?key=somekey')
    expect(page).to have_content 'somevalue'
  end
end