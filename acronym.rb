module Acronym
  def self.abbreviate(str)
    #str.scan(/(\A\w|((?<=\s)|-))\w/).join.upcase
    abbr = ""
    str.split(/\s*-*/).each do |word|
      abbr += " #{word}"
    end
    puts abbr
  end
end

include Acronym

Acronym.abbreviate('Something - I made up from thin air')
