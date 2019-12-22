class ResistorColorDuo
  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

  def self.value(color)
    resistor_value = ""
    color.each do |input|
      COLORS.each_with_index do |item, index|
        if input == item
          resistor_value += index.to_s
          if resistor_value.length == 2
            return resistor_value.to_i
          end
        end
      end
    end
  end
end
