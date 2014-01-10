class UIScrollGallery < UIScrollView
  def initWithNumImages(num_images,frame: frame)
    scrollView = UIScrollGallery.alloc.init
    scrollView.frame = frame
    scrollView.pagingEnabled = true;
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * num_images, scrollView.frame.size.height);
    scrollView.showsHorizontalScrollIndicator = true
    scrollView.showsVerticalScrollIndicator = false
    scrollView.maximumZoomScale = 1.0
    scrollView.minimumZoomScale = 1.0
    scrollView.clipsToBounds = true
    scrollView.scrollsToTop = false
    scrollView
  end

  def add_images(images)
    images.each_with_index do |i, x| 
      image = UIImageView.alloc.initWithFrame([[UIScreen.mainScreen.bounds.size.width * x, 0], [UIScreen.mainScreen.bounds.size.width, 290]])
      image.image = UIImage.imageNamed(i)
      self.addSubview(image) 
    end
  end


end