Grupo = Easyfire::EasyfireModel.new.compile do
  model_name :Grupo
  description "Grupo de seguranca"
  model_type :entity

  attribute :avatar do
    attr_description "Foto do grupo"
    attr_example ""
    attr_data_type :String
  end

  attribute :descricao do
    attr_description "Descricao"
    attr_example ""
    attr_data_type :String
  end

  attribute :nome do
    attr_description "Descricao"
    attr_example ""
    attr_data_type :String
  end


    # belongs_to do
    #
    #   define :fundador do
    #     navigable true
    #     load :lazy
    #     type :Membro
    #   end
    #
    # end
    #
    # has_many do
    #   define :Alerta do
    #     load :lazy
    #   end
    #
    #   define :Membro do
    #     load :eager
    #   end
    # end

    

end

