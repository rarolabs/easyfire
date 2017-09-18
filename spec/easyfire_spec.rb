require "spec_helper"


RSpec.describe Easyfire do

  it "generates Chat spec for java, swift and javascript" do
    
    
    def save(target,folder,file,content)
      path = "./#{target}/#{folder}/#{file}"
      File.open(path, 'w') { |f|
        f.puts content
      }
    end
    base_package = "br.com.easyhome.easyfire"
    
    model = Easyfire::Renders::Model.new
    model.base_package = base_package
    model.version = "1.0.1"
    
    service = Easyfire::Renders::Service.new
    service.base_package = base_package
    service.version = "1.0.1"

   # puts model.to_java(Alerta.to_spec)
   target = "target/#{base_package}".gsub /\./,"/"
   
   save target, 'models', "GrupoEF.java" , model.to_java(Grupo)
   save target, 'models', "AlertaEF.java", model.to_java(Alerta)
   save target, 'models', "MembroEF.java", model.to_java(Membro)

   save target, 'services', "GrupoServiceEF.java", service.to_java(Grupo)
   save target, 'services', "AlertaServiceEF.java", service.to_java(Alerta)
   save target, 'services', "MembroServiceEF.java", service.to_java(Membro)
  end
  
end
