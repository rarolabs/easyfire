module Easyfire
  
  class ModelSpec
    attr_accessor :model_name, :description, :model_type, :parents, :attributes, :associations
    def initialize()
      @model_name = ""
      @description = ""
      @model_type = nil
      @attributes = {}
      @associations = {}
      @parents = []
    end
  end
  
  class EasyfireModel
    
    attr_accessor :spec
    
    def initialize()
      @spec = ModelSpec.new
    end
    
    def compile(&block)
      instance_eval(&block)
      return @spec
    end

    def model_name(text)
      @spec.model_name = text
    end

    def parents(value)
      @spec.parents = value
    end
    
    def description(text)
      @spec.description = text
    end
    
    def model_type(value)
      @spec.model_type = value
    end
    

    def child(child_class)
      @@spec.child = child_class
    end
    
    
    def has_many(has_many_name,className, &block)
      
      @has_many_name = has_many_name

      new_association = {
        type: :has_many,
        description: "",
        example: "",
        navigable: false,
        load: :lazy,
        className: className
      }

      unless self.respond_to? :has_many_navigable
        
        def has_many_navigable(value)
          @spec.associations[@has_many_name][:navigable] = value
        end
      
        def has_many_load(value)
          @spec.associations[@has_many_name][:load] = value
        end

        def has_many_example(text)
          @spec.associations[@has_many_name][:example] = text
        end

        def has_many_description(text)
          @spec.associations[@has_many_name][:description] = text
        end
        
      end

      @spec.associations[@has_many_name] = new_association
      block.call
      
      
      # proc = Proc.new do
      #     attr_description ""
      #     attr_data_type :String
      # end
      # attribute("#{bt_name.to_s.uncapitalize}EFPath".to_sym,&proc)
      #
      # proc = Proc.new do
      #     attr_description ""
      #     attr_data_type "#{bt_name}EF"
      #     attr_options [:transient]
      #     attr_association bt_name
      # end
      #
      # attribute("#{bt_name.to_s.uncapitalize}EF".to_sym,&proc)
    end
  
    
    def belongs_to(bt_name, &block)
      
      @bt_name = bt_name

      new_association = {
        type: :belongs_to,
        description: "",
        example: "",
        navigable: false,
        load: :lazy
      }

      unless self.respond_to? :bt_navigable
        
        def bt_navigable(value)
          @spec.associations[@bt_name][:navigable] = value
        end
      
        def bt_load(value)
          @spec.associations[@bt_name][:load] = value
        end

        def bt_example(text)
          @spec.associations[@bt_name][:example] = text
        end

        def bt_description(text)
          @spec.associations[@bt_name][:description] = text
        end
        
      end

      @spec.associations[@bt_name] = new_association
      block.call
      
      
      # proc = Proc.new do
      #     attr_description ""
      #     attr_data_type :String
      # end
      # attribute("#{bt_name.to_s.uncapitalize}EFPath".to_sym,&proc)

      proc = Proc.new do
          attr_description ""
          attr_data_type "#{bt_name}EF"
          attr_options [:transient]
          attr_association bt_name
      end

      attribute("#{bt_name.to_s.uncapitalize}EF".to_sym,&proc)
    end
    
    def attribute(attribute_name, &block)
      @attribute_name = attribute_name
      new_attribute = {
        description: "",
        example: "",
        type: nil,
        options: [],
        association: nil
      }

      unless self.respond_to? :attr_association
        def attr_association(value)
          @spec.attributes[@attribute_name][:association] = value
        end
      
        def attr_options(options)
          @spec.attributes[@attribute_name][:options] = options
        end
        
        def attr_example(text)
          @spec.attributes[@attribute_name][:example] = text
        end

        def attr_description(text)
         @spec.attributes[@attribute_name][:description] = text
        end

        def attr_data_type(symbol)
          @spec.attributes[@attribute_name][:type] = symbol
        end
      end
      
      
      @spec.attributes[@attribute_name] = new_attribute
      block.call
    end

    
  end
end