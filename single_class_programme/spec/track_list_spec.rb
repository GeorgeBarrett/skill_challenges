# track_list = TrackList.new()

# track_list.list # => track_list = []

# track_list.list # => if list is empty then a fail message will be thrown

# track_list = TrackList.new()
# track_list.add("Poliwhirl")
# track_list.list # => ["Poliwhirl"]

# track_list = TrackList.new()
# track_list.add("Vicarious")
# track_list.add("Jambi")
# track_list.list # => ["Vicarious", "Jambi"]

require "track_list"

RSpec.describe TrackList do
  
  context "if list is empty" do
    it "it fails" do
      expect {todo_list.list("") }.to raise_error "Track list is empty."
    end
  end

  context "give a track" do
    xit "add track to track list" do
      todo_list.add("Poliwhirl")
      expect(track_list.list).to eq ["Poliwhirl"]
    end
  end

  context "give multiple tracks" do
    xit "add two tracks to the list" do
      todo_list.add("Poliwhirl")
      todo_list.add("Jambi")
      todo_list.add("This must be the place")
      expect(track_list.list).to eq ["Poliwhirl", "Jambi", "This must be the place"]  
    end
  end
end