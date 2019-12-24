module Acronym
  def self.abbreviate(str)
    str.scan(/^\w|(?<=\s)\w|(?<=-)\w/).join.upcase
  end
end
