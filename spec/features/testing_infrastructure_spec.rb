feature 'Testing infrastructure' do
  scenario 'Can run app and check content of homepage' do
    visit("/")
    expect(page).to have_content 'Testing Infrastructure Working!'
  end
end
