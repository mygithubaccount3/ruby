class Series
  attr_reader :string_of_digits

  def initialize(string_of_digits)
    @string_of_digits = string_of_digits
  end

  def slices(num)
    raise ArgumentError, "Too big argument" if num > @string_of_digits.length
    arr_with_grouped_digits = @string_of_digits.chars.each_cons(num).to_a
    arr_with_grouped_digits.each_with_index do |item, index|
      arr_with_grouped_digits[index] = item.join("")
    end
  end
end
