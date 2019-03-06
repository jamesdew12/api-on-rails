require "test_helper"

describe Artist do
  describe "validity" do
    let(:artist) { Artist.new }

    before do
      Artist.valid?
    end

    it "requires a user" do
      artist.errors[:user].must_include "can't be blank"
    end

    it "requires a description" do
      artist.errors[:description].must_include "can't be blank"
    end

    it "requires a name" do
      artist.errors[:name].must_include "can't be blank"
    end

    # it "requires the name to be unique for the same user" do
    #   existing_artist = create(:artist)
    #   artist.name = existing_artist.name
    #   artist.user = existing_artist.user
    #   artist.valid?
    #
    #   artist.errors[:name].must_include "has laready been taken"
    #
    # end
    #
    # it "does not require the name to be unique from different users" do
    #   existing_artist = create(:artist)
    #   artist.name = existing_artist.name
    #   artist.valid?
    #
    #   artist.errors[:name].wont_include "has already been taken"
    # end



  end
end
