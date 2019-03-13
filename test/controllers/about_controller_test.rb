require "test_helper"

describe AboutController do
  it "should get james" do
    get about_james_url
    value(response).must_be :success?
  end

end
