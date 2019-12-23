class ResistorColor
  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

  def self.color_code(color)
    COLORS.each_with_index do |item, index|
      if color == item
        return index
      end
    end
  end
end
