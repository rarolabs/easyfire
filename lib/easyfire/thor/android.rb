require 'thor'
class Android < Thor
  
  include Thor::Actions
  
  def initialize(options)
    @options = options
    @group = options[:group]
    @version = options[:version]
    @artifact = @options[:artifact]
    @package = "#{@group}.#{@artifact}"
    @specs = []
    @models_destination = "src/main/java/#{@group.gsub(/\./,'/')}/#{@artifact}/models"
    @services_destination = "src/main/java/#{@group.gsub(/\./,'/')}/#{@artifact}/services"
    @base_destination = "src/main/java/#{@group.gsub(/\./,'/')}/#{@artifact}/base"
    
    create_output_structure
  
  
    model = Easyfire::Renders::Model.new
    model.base_package = @package
    model.version = @version
    
    service = Easyfire::Renders::Service.new
    service.base_package = @package
    service.version = @version
    
    Dir["#{options[:source]}/*"].each do |file|
      className = file.split(/\//).last.gsub(/\.rb/,'')
      content = IO.read(file)
      current_model = eval(content)
      create_file "#{@models_destination}/#{className.camelcase}EF.java", model.to_java(current_model)
      create_file "#{@services_destination}/#{className.camelcase}ServiceEF.java", service.to_java(current_model)
    end
    puts "\n"
  end
  
  def create_output_structure
    self.destination_root = "#{@options[:destination]}/"
    directory "android", @options[:destination]
    empty_directory @models_destination
    empty_directory @services_destination
    empty_directory @base_destination
    template('android_helper/EasyfireDelegate.java.tt',"#{@base_destination}/EasyfireDelegate.java")
    template('android_helper/EasyfireListDelegate.java.tt',"#{@base_destination}/EasyfireListDelegate.java")
    template('android_helper/ModelEF.java.tt',"#{@base_destination}/ModelEF.java")
    template('android_helper/ServiceEF.java.tt',"#{@base_destination}/ServiceEF.java")
    
  end
  
  def self.source_root
    File.dirname(__FILE__)
  end
  
  
end