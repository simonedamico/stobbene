class AppDelegate
  attr_accessor :facebook
  attr_accessor :logged, :window
  
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @facebook = Facebook.alloc.initWithAppId('108912452551780', andDelegate:self)

    if App::Persistence['FBAccessTokenKey'] && App::Persistence['FBExpirationDateKey']
      @facebook.accessToken = App::Persistence['FBAccessTokenKey']
      @facebook.expirationDate = App::Persistence['FBExpirationDateKey']
    end

    if facebook.sessionValid?
      @logged = true
    else
      App::Persistence['logged'] = false
      @logged = false
    end

    
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    if @logged
      rootVC = UINavigationController.alloc.initWithRootViewController(HowAreYouController.alloc.init)
    else
      rootVC = LoginController.alloc.init
    end
    
    @window.rootViewController = rootVC
    @window.backgroundColor = UIColor.greenColor
    @window.makeKeyAndVisible

    UINavigationBar.appearance.tintColor = UIColor.colorWithRed(250, green:250, blue:250, alpha:1)

    true
  end

  def login_with_facebook(completion_block)
    @facebook.authorize nil
    @facebook_completion_block = completion_block
  end
  

  def fbDidLogin
    App::Persistence['FBAccessTokenKey'] = @facebook.accessToken
    App::Persistence['FBExpirationDateKey'] = @facebook.expirationDate
    App::Persistence['logged'] = true
    @logged = true
    @facebook_completion_block.call
  end

  def application(application,
                  openURL:url,
                  sourceApplication:sourceApplication,
                  annotation:annotation)
    @facebook.handleOpenURL(url)
  end
 
end
