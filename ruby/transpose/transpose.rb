class Transpose
  def self.transpose(input)
    return input if input.empty?

    lines = input.split("\n")
    max_line_index = lines.index { |line| line == lines.max_by(&:length) }
    result = []

    lines.reverse_each { |line|
      lines.index(line).downto(0) { |descending_index| lines[descending_index] = lines[descending_index].ljust(line.length) }
    }
    row_length = lines.first.length || 0

    row_length.times { |index|
      row = []
      lines.each { |line|
        row << line[index]
      }
      row << "\n"
      result << row
    }
    result.join('').chop
  end
end
