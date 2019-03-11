
require 'rails_helper'
describe "ddod" do
  it "visit" do
    visit "/"
    expect(page.current_url).to eq("http://www.example.com/")

  end
end
