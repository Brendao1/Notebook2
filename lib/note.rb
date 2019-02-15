# Amend the following classes to be testable in isolation, then write the tests for them.
# You will know you've succeeded when you can delete the format method on NoteFormatter and your Note tests still pass.

class Note
  def initialize(title, body, formatter = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

class NoteFormatter
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end

n = Note.new("Ferraris", "Ferraris are awesome", f = NoteFormatter.new)
puts n.display
