# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131026181842218) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "adocao_animais", :force => true do |t|
    t.integer  "doador_animal_id"
    t.integer  "adotando_animal_id"
    t.integer  "animal_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "adocao_confirmacao_chaves", :force => true do |t|
    t.string   "chave"
    t.integer  "dias_validade"
    t.binary   "chave_valida",          :limit => 255
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.integer  "confirmacao_adocao_id"
  end

  create_table "adotando_animais", :force => true do |t|
    t.integer  "usuario_id"
    t.integer  "status_adotando_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "animais", :force => true do |t|
    t.string   "nome"
    t.integer  "tipo_animal_id"
    t.integer  "idade_id"
    t.integer  "genero_id"
    t.text     "descricao_animal"
    t.integer  "estado_id"
    t.integer  "cidade_id"
    t.string   "cep",                  :limit => 45
    t.string   "rua"
    t.string   "numero_rua"
    t.integer  "status_animal_id"
    t.integer  "prioridade_adocao_id"
    t.integer  "doador_animal_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.integer  "raca_id"
  end

  create_table "artigos", :force => true do |t|
    t.string   "autor"
    t.string   "fonte"
    t.datetime "data_publicacao"
    t.string   "titulo"
    t.text     "artigo"
    t.binary   "ativo"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "cancelamento_adocoes", :force => true do |t|
    t.integer  "adocao_animal_id"
    t.integer  "doador_animal_id"
    t.integer  "adotando_animal_id"
    t.integer  "motivo_cancelamento_id"
    t.text     "motivo_cancelamento"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "cidades", :force => true do |t|
    t.string   "estado_id",  :limit => 45
    t.string   "sigla",      :limit => 45
    t.string   "cidade"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "comentario_artigos", :force => true do |t|
    t.string   "autor"
    t.text     "conteudo"
    t.integer  "artigo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comentario_artigos", ["artigo_id"], :name => "index_comentario_artigos_on_artigo_id"

  create_table "confirmacao_adocoes", :force => true do |t|
    t.integer  "adocao_animal_id"
    t.integer  "status_confirmacao_adotando_id"
    t.integer  "status_confirmacao_doador_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "doador_animais", :force => true do |t|
    t.integer  "usuario_id"
    t.string   "status_doador_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "endereco_feira_adocoes", :force => true do |t|
    t.string   "cep"
    t.integer  "estado_id"
    t.integer  "cidade_id"
    t.string   "numero"
    t.integer  "feira_adocao_id"
    t.string   "rua"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "endereco_oferta_voluntariado", :force => true do |t|
    t.string   "rua"
    t.string   "numero"
    t.string   "cep"
    t.integer  "estado_id"
    t.integer  "cidade_id"
    t.integer  "oferta_voluntariado_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "endereco_perfis", :force => true do |t|
    t.string   "rua"
    t.string   "numero"
    t.string   "cep"
    t.integer  "estado_id"
    t.integer  "cidade_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "perfil_id"
  end

  create_table "estabelecimentos", :force => true do |t|
    t.string   "estabelecimento"
    t.integer  "tipo_servico_id"
    t.integer  "estado_id"
    t.integer  "cidade_id"
    t.integer  "bairro_id"
    t.string   "rua"
    t.string   "numero_rua"
    t.string   "telefone"
    t.string   "descricao_servico"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "estados", :force => true do |t|
    t.string   "sigla",      :limit => 45
    t.string   "estado"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "feira_adocoes", :force => true do |t|
    t.integer  "usuario_id"
    t.string   "nome"
    t.text     "descricao"
    t.integer  "endereco_feira_adocao_id"
    t.datetime "inicio_feira"
    t.datetime "fim_feira"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "galeria_animais", :force => true do |t|
    t.integer  "animal_id"
    t.string   "descricao"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "generos", :force => true do |t|
    t.string   "genero_animal"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "idades", :force => true do |t|
    t.string   "idade_animal"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "indicacoes", :force => true do |t|
    t.integer  "estabelecimento_id"
    t.string   "comentario"
    t.float    "nota"
    t.string   "usuario_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "oferta_voluntariado", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.integer  "usuario_id"
    t.integer  "vigencia_oferta_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "oferta_voluntariado_candidatos", :force => true do |t|
    t.integer  "oferta_voluntariado_id"
    t.integer  "usuario_id"
    t.binary   "status_cadidatura"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "perfis", :force => true do |t|
    t.string   "nome",              :limit => 45
    t.string   "descricao"
    t.string   "telefone"
    t.datetime "data_nascimento"
    t.string   "cpf"
    t.integer  "usuario_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "tipo_perfil_id"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "porte_animais", :force => true do |t|
    t.string   "porte_animal"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "prioridade_adocoes", :force => true do |t|
    t.string   "prioridade_adocao"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "racas", :force => true do |t|
    t.integer  "tipo_animal_id"
    t.string   "raca"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "porte_animal_id"
  end

  create_table "rates", :force => true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "stars",         :null => false
    t.string   "dimension"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "rates", ["rateable_id", "rateable_type"], :name => "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], :name => "index_rates_on_rater_id"

  create_table "rating_caches", :force => true do |t|
    t.integer  "cacheable_id"
    t.string   "cacheable_type"
    t.float    "avg",            :null => false
    t.integer  "qty",            :null => false
    t.string   "dimension"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "rating_caches", ["cacheable_id", "cacheable_type"], :name => "index_rating_caches_on_cacheable_id_and_cacheable_type"

  create_table "status_adotandos", :force => true do |t|
    t.string   "status_adotando"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "status_animais", :force => true do |t|
    t.string   "status_animal"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "status_ativs", :force => true do |t|
    t.string   "status_ativ"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "status_confirmacao_adotandos", :force => true do |t|
    t.string   "status_confirmacao_adotando"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "status_confirmacao_doadores", :force => true do |t|
    t.string   "status_confirmacao_doador"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "tipo_animais", :force => true do |t|
    t.string   "tipo_animal"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tipo_galeria", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_perfis", :force => true do |t|
    t.string   "tipo_perfil"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "provider"
    t.string   "uid"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

  create_table "vigencia_oferta", :force => true do |t|
    t.integer  "vigencia"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
