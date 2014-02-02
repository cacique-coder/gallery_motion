# gallery

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'gallery'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gallery

## Usage

```ruby
class GalleryViewController < UIViewController
  include ControlGallery
  def viewDidLoad
    @scroll_gallery = UIScrollGallery.alloc.initWithNumImages(images.size,frame: frame_scroll)
    @scroll_gallery.delegate = self
    @scroll_gallery.add_images(images)
    view.addSubview(@scroll_gallery)

    #This you can edit as you wish
    center = CGPointMake(UIScreen.mainScreen.bounds.size.width / 2, 305)
    frame = [[0, 290], [UIScreen.mainScreen.bounds.size.width, 50]]
    numberOfPages = images.size

    @page_control = UIPageControlGallery.alloc.initWithCenter(center,frame: frame,numberOfPages: numberOfPages)
    @page_control.addTarget(self, action:'pageTurn:', forControlEvents:UIControlEventValueChanged)
    view.addSubview(@page_control)
  end

  #this methods are important
  def scroll_gallery
    @scroll_gallery
  end

  def page_control
    @page_control
  end


  # options by users....
  def images
    ['image1.png','image2.png']
  end 
  

  def frame_scroll
    [[0,46],[UIScreen.mainScreen.bounds.size.width,380]]
  end
end
```

## Author
  hugoerg56 made the first implementation
 
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
