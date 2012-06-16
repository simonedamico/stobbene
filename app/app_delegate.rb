class AppDelegate
  attr_accessor :facebook
  
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @facebook = Facebook.alloc.initWithAppId('108912452551780', andDelegate:self)
    
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = LoginController.alloc.init
    @window.makeKeyAndVisible

    true
  end

 
end
