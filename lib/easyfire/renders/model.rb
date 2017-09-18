require 'erb'
require 'byebug'

module Easyfire
 
 
  module Renders
   
    class Model

      include Easyfire::Renders::Helpers
   
      def initialize
        @java   = File.read("#{Renders::GEM_ROOT}/easyfire/renders/templates/model.java.erb")
        @swift  = File.read("#{Renders::GEM_ROOT}/easyfire/renders/templates/model.swift.erb")
      end
      
      def to_java(spec)
        extract_spec(spec)
        generate(@java)
      end
      
      def to_swift(spec)
        extract_spec(spec)
        generate(@swift)
      end
      
      private 
      
    end
  end
end