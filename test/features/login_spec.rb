RSpec.feature "testing for the correct urls", type: :feature do
  scenario "first page url" do
    visit "/"
    expect(page.current_url).to eq("http://www.example.com/")

  end

end  
