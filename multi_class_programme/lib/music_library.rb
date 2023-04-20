class MusicLibrary
  def initialize
    # ...
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  end

  def all
    # Returns a list of track objects
  end
  
  def search_by_title(keyword) # keyword is a string
    # Returns a list of tracks with titles that include the keyword
  end
end

class Track
  def initialize(title, artist) # title and artist are both strings
  end

  def format
    # Returns a string of the form "TITLE by ARTIST"
  end
end