require "byebug"

Alerta = Easyfire::EasyfireModel.new.compile do

  model_name    :Alerta
  description   "Alertas de segurança enviados pelo usuário"
  model_type    :entity
  parents       [:Grupo]

  attribute :avatarMemebro do
    attr_description "Foto do avatar do membro"
    attr_example "https://rediseg2.firebaseapp.com/bot-rediseg.png"
    attr_data_type :String
  end

  attribute :descricao do
    attr_description "Descrição do alerta"
    attr_example "Seja bem vindo!\n\nEu sou o IAPS (Inteligência Artificial para Segurança). Estou aqui para ajudar a tornar esse grupo mais seguro.\n\nClique na foto e veja o que eu já sou capaz de fazer."
    attr_data_type :String
  end

  attribute :foto do
    attr_description "Foto associada ao alerta"
    attr_example "https://rediseg2.firebaseapp.com/boas_vindas.jpg"
    attr_data_type :String
  end

  attribute :fotoLocal do
    attr_description "Nome do arquivo no dispositivo"
    attr_example "file//foto.jpg"
    attr_data_type :String
    attr_options [:transient]
  end

  attribute :localizacao do
    attr_description "Local onde o alerta foi gerado"
    attr_example "Central de Controle da REDISEG - Belo Horizonte - MG"
    attr_data_type :String
  end

  attribute :nomeMembro do
    attr_description "Nome do membro que gerou o Alerta"
    attr_example "IAPS - (Inteligência Artificial para Segurança)"
    attr_data_type :String
  end

  attribute :nomeMembroUltimoComentario do
    attr_description "Nome do membro que gerou o ultimo comentário"
    attr_example "Rodrigo Sol"
    attr_data_type :String
  end


  attribute :numeroComentarios do
    attr_description "Número de comentários do alerta"
    attr_example "0"
    attr_data_type :Long
  end

  attribute :ta1x do
    attr_description "Flag que indica que o thumbnail da foto ja foi carregado para resolução 1x"
    attr_example "true"
    attr_data_type :Boolean
  end


  attribute :ta2x do
    attr_description "Flag que indica que o thumbnail  da foto ja foi carregado para resolução 2x"
    attr_example "true"
    attr_data_type :Boolean
  end

  attribute :ta3x do
    attr_description "Flag que indica que o thumbnail da foto ja foi carregado para resolução 3x"
    attr_example "true"
    attr_data_type :Boolean
  end

  attribute :timestamp do
    attr_description "Momento que o alerta foi gerado"
    attr_example "12345677"
    attr_data_type :Long
  end


  attribute :tipo do
    attr_description "Tipo do alerta"
    attr_example "informativo"
    attr_data_type :String
  end


  belongs_to :Membro do
    bt_navigable true
    bt_load :lazy
  end

  belongs_to :Grupo do
    bt_navigable true
    bt_load :eager
  end

end

