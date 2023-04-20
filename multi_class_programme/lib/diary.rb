class Diary
  def initialize
    @entries = []
    @mobile_numbers = []
  end

  def add_entry(entry)
    @entries << entry 
  end

  def add_todo(todo)
  end

  def list_entries
    @entries
  end

  def diary_entries_based_speed(minutes, wpm)
  end
  
  def list_mobile_numbers
    mobile_number = @entries
    mobile_number.map! do |entry|
      entry.scan(/\d+/)
    end
    @mobile_numbers << mobile_number
    return @mobile_numbers.flatten
  end
end