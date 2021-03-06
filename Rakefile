# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'bundler/setup'
Bundler.require :default

require 'sugarcube-attributedstring'
require 'bubble-wrap/reactor'

ENV['args'] ||= "-AppleLanguages '(ja)'"

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'HBFav'
  app.version = "2.9.3"
  app.short_version = "2.9.3"
  app.deployment_target = '9.0'
  app.device_family = [:iphone, :ipad]
  app.identifier = "HBFav"
  app.prerendered_icon = true
  app.status_bar_style = :light_content
  app.my_env.file = './config/environment.yaml'

  app.interface_orientations = [:portrait]
  app.info_plist['UISupportedInterfaceOrientations~ipad'] = [
    'UIInterfaceOrientationPortrait',
    'UIInterfaceOrientationPortraitUpsideDown',
    'UIInterfaceOrientationLandscapeLeft',
    'UIInterfaceOrientationLandscapeRight'
  ]
  app.info_plist['UILaunchStoryboardName'] = 'LaunchScreen'

  app.info_plist['NSAppTransportSecurity'] = {
    'NSAllowsArbitraryLoads' => true
  }

  app.info_plist['CFBundleURLTypes'] = [
    {
      'CFBundleURLName' => 'net.bloghackers.app',
      'CFBundleURLSchemes' => ['hbfav']
    },
    {
      'CFBundleURLName' => 'com.getpocket.sdk',
      'CFBundleURLSchemes' => ['pocketapp16058']
    }
  ]
  app.info_plist['UIViewControllerBasedStatusBarAppearance'] = false
  app.info_plist['UIStatusBarStyle'] = "UIStatusBarStyleLightContent"
  app.info_plist['UIBackgroundModes'] = ['fetch', 'remote-notification']

  app.pods do
    pod 'NSDate+TimeAgo'
    pod 'TUSafariActivity'
    pod 'SVProgressHUD'
    pod 'JASidePanels'
    pod 'TTTAttributedLabel'
    pod 'ARChromeActivity'
    pod 'HatenaBookmarkSDK'
    pod 'MPNotificationView', :git => 'https://github.com/naoya/MPNotificationView.git', :branch => 'HBFav'
  end

  app.frameworks += [
    'Accounts',
    'AVFoundation',
    'AudioToolbox',
    'CFNetwork',
    'CoreData',
    'ImageIO',
    'MapKit',
    'MobileCoreServices',
    'QuartzCore',
    'Security',
    'Social',
    'StoreKit',
    'SystemConfiguration',
  ]

  app.weak_frameworks += [
    'MediaAccessibility',
    'WebKit'
  ]

  app.libs += %W(/usr/lib/libz.dylib /usr/lib/libsqlite3.dylib)

  app.icons = ["Icon-60@2x.png", "Icon-60@3x.png", "Icon-76.png", "Icon-76@2x.png"]

  app.entitlements['keychain-access-groups'] = [
    app.seed_id + '.' + app.identifier
  ]
end
