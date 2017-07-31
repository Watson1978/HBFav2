# -*- coding: utf-8 -*-
class URLActivityViewController < UIActivityViewController
  def initWithDefaultActivities(activityItems)
    safari = TUSafariActivity.new
    hatena = HatenaBookmarkActivity.new
    chrome = ARChromeActivity.new.tap do |activity|
      activity.activityTitle = "Chromeで開く"
    end

    self.initWithActivityItems(
      activityItems,
      applicationActivities:[
        safari,
        chrome,
        hatena,
      ]
    )

    self.setValue(activityItems[0], forKey:"subject")
    self.excludedActivityTypes = [UIActivityTypeMessage, UIActivityTypePostToWeibo]
    self
  end
end
