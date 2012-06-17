class LoginView < UIView
  attr_reader :facebook_button
  def initWithFrame(rect)
    if super(rect)
      self.backgroundColor = UIColor.colorWithPatternImage(UIImage.imageNamed("BackLogin"))
      
      @facebook_button = UIButton.buttonWithType(UIButtonTypeCustom)
      @facebook_button.setBackgroundImage(UIImage.imageNamed("ButtonLoginFb"), forState:UIControlStateNormal)
      @facebook_button.sizeToFit
      self.addSubview(@facebook_button)
      
    end
    self
  end

  def layoutSubviews
    @facebook_button.center = CGPoint.new(self.bounds.size.width/2, self.bounds.size.height/2)
  end
  
end
