class Parser
  REGEXPS = [
    /what(?: the fuck| the hell)? does "?([\w\s]+)"? (mean|actually mean)/i,
    /what(?: the fuck| the hell)? is an? "?([\s\w]+)"?\?/i
  ]

  def self.parse(string)
    REGEXPS.find { |regexp| string =~ regexp }
    match = $1
    return nil if match =~ /^it|that$/i
    match
  end
end