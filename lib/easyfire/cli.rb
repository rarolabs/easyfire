require 'thor'

module Easyfire
  class CLI < Thor
    
    desc "android", "This will create a Easyfire client lib for android"
    long_desc <<-ANDROID

    android command will generate a gradle library contains all models and services 
    for firebase integration via Easyfire.
    ANDROID
    
    option :version
    option :package
    option :source
    option :destination
    option :group
    option :artifact
    def android
      android = Android.new(options)
    end
  end
end