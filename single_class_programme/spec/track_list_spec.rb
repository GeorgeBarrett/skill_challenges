require "track_list.rb"

RSpec.describe TrackList do
  
  context "if list is empty" do
    it "it fails" do
      track_list = TrackList.new
      expect { track_list.list }.to raise_error "Track list is empty."
    end
  end

  context "give a track" do
    it "add track to track list" do
      track_list = TrackList.new
      track_list.add("Poliwhirl")
      expect(track_list.list).to eq ["Poliwhirl"]
    end
  end

  context "give multiple tracks" do
    it "add two tracks to the list" do
      track_list = TrackList.new
      track_list.add("Poliwhirl")
      track_list.add("Jambi")
      track_list.add("This must be the place")
      expect(track_list.list).to eq ["Poliwhirl", "Jambi", "This must be the place"]  
    end
  end
end