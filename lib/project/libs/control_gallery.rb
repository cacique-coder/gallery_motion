module ControlGallery
  def scrollViewDidScroll(sender)
    pageWidth = scroll_gallery.frame.size.width;
    scroll_gallery.setContentOffset( CGPointMake(scroll_gallery.contentOffset.x, 0) )
    page = ((scroll_gallery.contentOffset.x - pageWidth / 2) /pageWidth) + 1
    page_control.currentPage = page;
  end
  
  def pageTurn(pageControl)
    scroll_gallery.setContentOffset( CGPointMake(UIScreen.mainScreen.bounds.size.width * pageControl.currentPage, 0) )
  end
end