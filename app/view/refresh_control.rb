# -*- coding: utf-8 -*-
module HBFav2
  class RefreshControl < UIRefreshControl
    def init
      super
      if self
        self.backgroundColor = '#e2e7ed'.uicolor
      end
      self
    end

    def update_title(msg = nil)
      # TODO : 削除可能？
    end
  end
end
