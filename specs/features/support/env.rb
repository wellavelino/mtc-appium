require 'pry'
require 'appium_lib'
require 'nakal/cucumber'
require_relative File.expand_path('../../base_screen/base_screen.rb', __FILE__)


# Class to not pollute 'Object' class with appium methods
class AppiumWorld
end

if ENV['PLATFORM'] == 'android'
  caps = Appium.load_appium_txt file: File.expand_path('../android/appium.txt', __FILE__), verbose: true
  Nakal.platform = :android
  Nakal.device_name = 'moto_g_3'
else
  caps = Appium.load_appium_txt file: File.expand_path('../ios/appium.txt', __FILE__), verbose: true
  Nakal.platform = :ios
end

Appium::Driver.new(caps)
Appium.promote_appium_methods Object

World do
  AppiumWorld.new
end
