class TrackList

  def initialize
    @track_list = []
    end
    
  def add(track) #track is a string
      @track_list << track
  end
    
  def list
    fail "Track list is empty." if @track_list.empty?
    return @track_list
  end

end