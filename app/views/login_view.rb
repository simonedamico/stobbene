class LoginView < UIView
  attr_reader :facebook_button
  def initWithFrame(rect)
    if super(rect)
      self.backgroundColor = UIColor.whiteColor
      
      @facebook_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
      @facebook_button.setTitle('Enter with Facebook', forState: UIControlStateNormal)
      @facebook_button.sizeToFit
      self.addSubview(@facebook_button)
      
    end
    self
  end

  def layoutSubviews
    @facebook_button.center = CGPoint.new(self.bounds.size.width/2, self.bounds.size.height/2)
  end
  
end
