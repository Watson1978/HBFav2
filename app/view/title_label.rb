class TitleLabel < UILabel
  def initWithFrame(frame)
    if super
      self.font = UIFont.boldSystemFontOfSize(14)
      self.backgroundColor = UIColor.clearColor
      self.textAlignment = UITextAlignmentCenter
      self.textColor = UIColor.whiteColor
    end
    self
  end
end
