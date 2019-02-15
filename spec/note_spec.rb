require 'note'

# describe Note do
  describe "#display" do
    it "arranges the note into a title and body" do
      # I am testing @formatter.format(self)
      # I need to create a formatter object
      # I need to create the output of the format method
      title_double = double :title, title: "Ferraris"
      body_double = double :body, body: "Ferraris are awesome"
      formatter_double = double :formatter, format: "Title: #{title_double.title}\n#{body_double.body}"
      n = Note.new("Ferraris", "Ferraris are awesome", formatter_double)
      expect(n.display).to eq "Title: #{n.title}\n#{n.body}"
    end
  end


describe NoteFormatter do
  describe "#format(note)" do
    it "adds a title, a new line and body" do
      formatter = NoteFormatter.new
      title = "Ferraris"
      body = "Ferraris are awesome"
      note_double = double(:title => title, :body => body)
      expect(formatter.format(note_double)).to eq "Title: #{title}\n#{body}"
    end
  end
end
