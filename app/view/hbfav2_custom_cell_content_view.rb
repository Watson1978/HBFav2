module HBFav2
  class CustomCellContentView < UIView
    def drawRect(rect)
      self.superview.superview.drawRectContent(rect)
    end
  end
end
