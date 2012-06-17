class HowAreYouController < UITableViewController
  NO_OF_CELLS = 4
  AVATAR_CELL_POSITION = 0
  AVATAR_CELL_IDENTIFIER = 'avatarcell'
  FINE_CELL_POSITION = 1
  FINE_CELL_IDENTIFIER = 'finecell'
  HELP_CELL_POSITION = 2
  HELP_CELL_IDENTIFIER = 'helpcell'
  ALERT_CELL_POSITION = 3
  ALERT_CELL_IDENTIFIER = 'altertcell'
  
  def initWithStyle(style)
    if super(style)
      logo = UIImageView.alloc.initWithImage(UIImage.imageNamed('LogoNav')).sizeToFit
      self.navigationItem.titleView = logo
    end
    self
  end

  def tableView(tableView, numberOfRowsInSection:section)
    NO_OF_CELLS
  end

  def tableView(tableVIew, cellForRowAtIndexPath:path)
    identifier = nil
    case path.row
    when AVATAR_CELL_POSITION
      identifier = AVATAR_CELL_IDENTIFIER
    when FINE_CELL_POSITION
      identifier = FINE_CELL_IDENTIFIER
    when HELP_CELL_POSITION
      identifier = HELP_CELL_IDENTIFIER
    when ALERT_CELL_POSITION
      identifier = ALERT_CELL_IDENTIFIER
    end
    cell = dequeueReusableCellWithIdentifier(identifier)

    unless(cell)
      case path.row
      when AVATAR_CELL_POSITION
        cell = nil
      when FINE_CELL_POSITION
        cell = nil
      when HELP_CELL_POSITION
        cell = nil
      when ALERT_CELL_POSITION
        cell = nil
      end
    end

    cell
  end
  
  def tableView(tableView, didSelectRowAtIndexPath:path)
    case path.row
    when FINE_CELL_POSITION
      #push fine controller
    when HELP_CELL_POSITION
      #push help controller
    end
    
  end
  
  
end
