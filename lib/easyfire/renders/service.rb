require 'erb'
require 'byebug'

module Easyfire
 
  module Renders
    
    class Service
    
      include Easyfire::Renders::Helpers
    
   
      def initialize
        @java   = File.read("#{Renders::GEM_ROOT}/easyfire/renders/templates/service.java.erb")
        @swift  = File.read("#{Renders::GEM_ROOT}/easyfire/renders/templates/service.swift.erb")
      end
      
      def to_java(spec)
        extract_spec(spec)
        generate(@java)
      end
      
      def to_swift(spec)
        extract_spec(spec)
        generate(@swift)
      end
      
    end
  end
end