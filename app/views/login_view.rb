class LoginView < UIView
  attr_reader :username_field, :password_field
  def initWithFrame(rect)
    if super(rect)
      self.backgroundColor = UIColor.whiteColor
      
      @username_field = UITextField.alloc.init
      @username_field.placeholder = "username"
      @username_field.bounds = CGRectMake(0,0,300,50)
      @username_field.borderStyle = UITextBorderStyleBezel
      self.addSubview(@username_field)

      @password_field = UITextField.alloc.init
      @password_field.placeholder = "password"
      @password_field.bounds = CGRectMake(0,0,300,50)
      @password_field.borderStyle = UITextBorderStyleBezel
      self.addSubview(@password_field)
      
    end
    self
  end

  def layoutSubviews
    @username_field.center = CGPoint.new(self.bounds.size.width/2, self.bounds.size.height/5*2)
    @password_field.center = CGPoint.new(self.bounds.size.width/2, self.bounds.size.height/5*4)
  end
  
end
