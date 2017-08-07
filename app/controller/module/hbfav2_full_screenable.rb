# -*- coding: utf-8 -*-
module HBFav2
  module FullScreenable
    def prepare_fullscreen
      @fullscreen = false

      # self.extendedLayoutIncludesOpaqueBars = false
    end

    def cleanup_fullscreen
      @fullscreen = false
    end

    def toggle_fullscreen(recog)
      if (recog.state == UIGestureRecognizerStateEnded)
        @fullscreen = !@fullscreen
        @fullscreen ? begin_fullscreen : end_fullscreen
      end
    end

    def begin_fullscreen
      ## navigationController がある == まだ生き残ってる
      if navigationController.present?
        @fullscreen = true

        self.navigationController.setNavigationBarHidden(true, animated:true)
        UIApplication.sharedApplication.setStatusBarHidden(true, withAnimation:UIStatusBarAnimationFade)
      end
    end

    def end_fullscreen
      @fullscreen = false

      self.navigationController.setNavigationBarHidden(false, animated:true)
      UIApplication.sharedApplication.setStatusBarHidden(false, withAnimation:UIStatusBarAnimationFade)
    end
  end
end
