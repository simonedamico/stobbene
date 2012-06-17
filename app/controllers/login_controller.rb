class LoginController < UIViewController
  attr_accessor :facebook
  
  def init
    if super
    end
    self
  end
  
  
  def loadView
    self.view = LoginView.alloc.init
    self.view.facebook_button.addTarget(self, action:'login_with_facebook', forControlEvents:UIControlEventTouchUpInside)
  end


  def login_with_facebook
    completion_block = lambda do
      
      success_block = lambda do |request, response, result|
        App.delegate.window.rootViewController = HowAreYouController.alloc.init
      end
      failure_block = lambda do |request, response, result|
        puts "NOOOO"
      end

      API.login_with_facebook(App::Persistence['FBAccessTokenKey'], success_block, failure_block)
      
      
    end

    App.delegate.login_with_facebook(completion_block)
    
          
  end
  
end


  
