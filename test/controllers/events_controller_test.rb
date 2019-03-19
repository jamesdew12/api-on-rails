require "test_helper"

describe EventsController do
  it "should get gigs" do
    get events_gigs_url
    value(response).must_be :success?
  end

end
