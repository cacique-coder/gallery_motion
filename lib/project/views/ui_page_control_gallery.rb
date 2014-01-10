class UIPageControlGallery < UIPageControl
  def initWithCenter(center,frame: frame,numberOfPages: numberofPages)
    page_control = UIPageControlGallery.alloc.init
    page_control.center = center
    page_control.frame = frame
    page_control.numberOfPages = numberofPages
    page_control.currentPage = 0
    page_control
  end
end