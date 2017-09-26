module Easyfire
  module Renders
    module Helpers
      
      attr_accessor :base_package, :version
      
      @@java_data_types = {
        String: "String",
        Long: "Long",
        Boolean: "Boolean"
      }  
    
      @@swift_data_types = {
        String: "String?",
        Long: "CLong?",
        Boolean: "Bool?"
      }  
    
      @@java_defaults = {
        String: "\"\"",
        Long: "0L",
        Boolean: "false"
      }
    
      @@swift_defaults = {
        String: "\"\"",
        Long: "0",
        Boolean: "false"
      }
    
      def type_to_java_value(data_type)
        @@java_data_types[data_type] || data_type.to_s 
      end
      
      def type_to_swift_value(data_type)
        @@swift_data_types[data_type] || data_type.to_s + "?"
      end
    
      def java_default_value(data_type)
        @@java_defaults[data_type] || "null"
      end
    
      def swift_default_value(data_type)
        @@swift_defaults[data_type] || "nil"
      end
      
      def extract_spec(spec)
        @spec = spec
        @name = spec.model_name.to_s
        @class_name_ef = spec.model_name.to_s + "EF"
        @service_class = spec.model_name.to_s + "ServiceEF"
        @object_name_ef = spec.model_name.to_s.uncapitalize + "EF"
        @collection_name = spec.model_name.to_s.underscore
        @declaration = "#{@class_name_ef} #{@object_name_ef}"
        @description = spec.description
        @attributes = spec.attributes
        @belongs_to = spec.associations
        @parents = spec.parents
      end
      
      def generate(template)
        ERB.new(template).result(binding)
      end
      
      
    end
  end
end