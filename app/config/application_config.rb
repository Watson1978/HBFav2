class ApplicationConfig
  attr_reader :vars

  def self.sharedConfig
    Dispatch.once { @instance ||= new }
    @instance
  end

  def initialize
    @vars = MY_ENV
  end

  def applicationFontOfSize(size)
    UIFont.fontWithName("HelveticaNeue", size:size)
  end

  def boldApplicationFontOfSize(size)
    UIFont.fontWithName("HelveticaNeue", size:size)
  end

  def systemFontOfSize(size)
    UIFont.fontWithName("HelveticaNeue", size:size)
  end

  def boldSystemFontOfSize(size)
    UIFont.fontWithName("Helvetica-Bold", size:size)
  end
end
