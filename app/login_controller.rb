class LoginController < UIViewController
  def init
    if super
    end
    self
  end
  
  
  def loadView
    self.view = LoginView.alloc.init
    self.view.username_field.delegate = self
    self.view.password_field.delegate = self
  end

  def textFieldDidEndEditing(textField)
    case textField
    when self.view.username_field
      @username = self.view.username_field.text
    when self.view.password_field
      @password = self.view.password_field.text
    end
  end

  def textFieldShouldReturn(textField)
    textField.resignFirstResponder
    true
  end
  
end


  
