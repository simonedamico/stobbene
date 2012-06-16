class HowAreYouView < UIView
  def initWithFrame(rect)
    if super(rect)
      self.backgroundColor = UIColor.whiteColor
      @fine_button = UIGlassButton.buttonWithType(UIButtonTypeCustom)
      @fine_button.setTitle("I'm fine", forState: UIControlStateNormal)
      @fine_button.tintColor = UIColor.greenColor
      @fine_button.titleLabel.font = UIFont.systemFontOfSize(42)
      @fine_button.sizeToFit
      self.addSubview(@fine_button)
      

      @help_button = UIGlassButton.buttonWithType(UIButtonTypeCustom)
      @help_button.setTitle('Help!', forState: UIControlStateNormal)
      @help_button.titleLabel.font = UIFont.systemFontOfSize(42)
      @help_button.tintColor = UIColor.redColor
      @help_button.sizeToFit
      self.addSubview(@help_button)

      
    end
    self
  end


  def layoutSubviews
    @fine_button.center = CGPoint.new(self.bounds.size.width/2, self.bounds.size.height/3)
    @help_button.center = CGPoint.new(self.bounds.size.width/2, self.bounds.size.height/3*2)
  end
  
  
end
