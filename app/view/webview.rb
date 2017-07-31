module HBFav2
  class WebView < UIWebView
    def stopLoading
      super
      UIApplication.sharedApplication.networkActivityIndicatorVisible = false
    end

    def dealloc
      if self.loading?
        self.stopLoading
      end
      self.delegate = nil
      super
    end
  end
end
