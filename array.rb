class Array
  def median
    sorted = self.sort!
    middle = sorted.length / 2

    return nil if sorted.length == 0
    sorted.length.even? ? (sorted[middle - 1] + sorted[middle]) / 2.0 : sorted[middle]
  end
end
