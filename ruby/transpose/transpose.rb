class Transpose
  def self.transpose(input)
    return input if input.empty?

    char_lines = input.gsub(' ', '_').split("\n")
    max_length = char_lines.max_by(&:length).length

    char_lines.map { |char_line| char_line.ljust(max_length).chars }
      .transpose
      .map { |char_line| char_line.join.rstrip.gsub('_', ' ') }
      .join("\n")
  end
end
