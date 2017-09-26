require 'thor'
class Swift < Thor
  
  include Thor::Actions
  
  def initialize(options)
    @options = options
    @group = options[:group]
    @version = options[:version]
    @artifact = @options[:artifact]
    @package = "#{@group}.#{@artifact}"
    @specs = []
    @models_destination = "Easyfire/Classes/Models"
    @services_destination = "Easyfire/Classes/Services"
    
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
      create_file "#{@models_destination}/#{className.camelcase}EF.swift", model.to_swift(current_model)
      create_file "#{@services_destination}/#{className.camelcase}ServiceEF.swift", service.to_swift(current_model)
    end
    puts "\n"
  end
  
  def create_output_structure
    self.destination_root = "#{@options[:destination]}/"
    directory "swift", @options[:destination]
  end
  
  def self.source_root
    File.dirname(__FILE__)
  end
  
  
end