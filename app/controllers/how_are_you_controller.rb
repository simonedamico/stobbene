class HowAreYouController < UIViewController
  def init
    if super
    end
    self
  end

  def loadView
    self.view = HowAreYouView.alloc.init
  end
  
  
end
