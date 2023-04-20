require "diary"

RSpec.describe do
  it 'adds a diary entry and then lists it' do
    diary = Diary.new
    diary.add_entry("my entry")
    expect(diary.list_entries).to eq ["my entry"]
  end

  context 'filters phone numbers from diary entires' do
    it 'stores and lists a number when a diary entry has a number' do
      diary = Diary.new
      diary.add_entry("aphex 07927829971 twin")
      expect(diary.list_mobile_numbers).to eq ["07927829971"]
    end

    it 'stores and lists a number when a diary entry has a number' do
      diary = Diary.new
      diary.add_entry("aphex 07927829971 twin 0728489329846")
      expect(diary.list_mobile_numbers).to eq ["07927829971", "0728489329846"]
    end

    it "takes twon numbers in two entries and returns both" do
    diary = Diary.new
    diary.add_entry("aphex 07927829971")
    diary.add_entry("twin 07927829972")
    expect(diary.list_mobile_numbers).to eq ["07927829971", "07927829972"]
    end
  end
end