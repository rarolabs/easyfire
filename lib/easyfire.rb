require 'active_support'
require 'active_support/core_ext'
require "easyfire/version"
require 'easyfire/easyfire_model'

require "easyfire/renders"
require "easyfire/renders/helpers"
require 'easyfire/renders/model'
require 'easyfire/renders/service'
require 'erb'
require "easyfire/thor/android"
require "easyfire/cli"

class String
  def uncapitalize 
    self[0, 1].downcase + self[1..-1]
  end
end


module Easyfire  
end
