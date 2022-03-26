class Transpose
  def self.transpose(input)
    return input if input.empty?

    lines = input.gsub(' ', '_').split("\n")
    max_length = lines.max_by(&:length).length

    lines.map { |line| line.ljust(max_length).chars }
      .transpose
      .map { |char_line| char_line.join.rstrip.gsub('_', ' ') }
      .join("\n")
  end
end
