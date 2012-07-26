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

ActiveRecord::Schema.define(:version => 20120726211612) do

  create_table "carga_pagos", :primary_key => "id_pago", :force => true do |t|
    t.integer "id_obligacion"
    t.string  "nombre_cartera", :limit => 50,                                                :null => false
    t.string  "num_dcto",       :limit => 20
    t.string  "folio",          :limit => 20,                                                :null => false
    t.decimal "monto",                         :precision => 10, :scale => 2,                :null => false
    t.string  "comentarios",    :limit => 300
    t.integer "id_estado",                                                    :default => 1
  end

  add_index "carga_pagos", ["id_estado"], :name => "IX_fk_id_estado_carga_pagos_carga_pagos"

  create_table "carga_recovering", :force => true do |t|
    t.string   "cuenta_contable",               :limit => 100
    t.integer  "numero_cuenta"
    t.integer  "numero_cliente"
    t.string   "tipo_documento",                :limit => 20
    t.string   "num_documento",                 :limit => 20
    t.string   "nombre",                        :limit => 150
    t.string   "apell_pater",                   :limit => 250
    t.string   "apell_mater",                   :limit => 200
    t.integer  "dias_mora"
    t.string   "moneda",                        :limit => 200
    t.decimal  "saldo_mora",                                   :precision => 10, :scale => 3
    t.decimal  "pago_minimo",                                  :precision => 10, :scale => 3
    t.string   "direccion_deudor",              :limit => 350
    t.string   "codigo_postal",                 :limit => 20
    t.string   "dist_domicilio",                :limit => 200
    t.string   "prov_domicilio",                :limit => 200
    t.string   "depto_domicilio",               :limit => 200
    t.string   "region_cob",                    :limit => 40
    t.string   "telefono",                      :limit => 80
    t.string   "telefono_1",                    :limit => 80
    t.string   "anexo",                         :limit => 20
    t.string   "nombre_empresa",                :limit => 200
    t.string   "direccion_trabajo",             :limit => 300
    t.string   "cargo_desempenyado",            :limit => 50
    t.string   "telefono_trabajo",              :limit => 80
    t.string   "direccion_adicional",           :limit => 200
    t.string   "tipo_adicional",                :limit => 40
    t.string   "provincia_adicional",           :limit => 40
    t.string   "codigo_postal_adicional",       :limit => 40
    t.string   "sequ_ics",                      :limit => 40
    t.string   "nombre_postal_adicional",       :limit => 40
    t.string   "ciudad_postal_adicional",       :limit => 40
    t.string   "departamento_postal_adicional", :limit => 40
    t.string   "region_cob_adicional",          :limit => 40
    t.integer  "numero_direccion"
    t.string   "tramo",                         :limit => 20
    t.string   "plaza",                         :limit => 40
    t.string   "nombre_cartera",                :limit => 150
    t.integer  "validacion"
    t.integer  "id_carga"
    t.integer  "id_deudor"
    t.integer  "id_cartera"
    t.integer  "id_estado_civil"
    t.integer  "id_tip_dcto"
    t.integer  "id_producto"
    t.integer  "id_tipo_producto"
    t.string   "ubi_depto_trabajo",             :limit => 2
    t.string   "ubi_prov_trabajo",              :limit => 4
    t.string   "ubi_dist_trabajo",              :limit => 6
    t.integer  "id_via"
    t.integer  "id_ubicacion"
    t.integer  "id_lugar"
    t.string   "ubi_depto_dom",                 :limit => 2
    t.string   "ubi_prov_dom",                  :limit => 4
    t.string   "ubi_dist_dom",                  :limit => 6
    t.integer  "id_moneda"
    t.string   "ubi_depto_dom_adicional",       :limit => 2
    t.string   "ubi_prov_dom_adicional",        :limit => 4
    t.string   "ubi_dist_dom_adicional",        :limit => 6
    t.string   "nombresx",                      :limit => 150
    t.string   "ind_pat",                       :limit => 80
    t.string   "ind_mat",                       :limit => 80
    t.integer  "id_tipo_direccion_banco",                                                     :default => 1
    t.integer  "id_usuario"
    t.string   "sexo",                          :limit => 1
    t.datetime "fecha_nacimiento"
    t.string   "estado_civil",                  :limit => 80
    t.string   "e_mail",                        :limit => 150
    t.string   "producto",                      :limit => 150
    t.string   "tipo_producto",                 :limit => 150
    t.string   "nombre_producto",               :limit => 150
    t.string   "numero_producto",               :limit => 40
    t.string   "folio_obligacion",              :limit => 30
    t.string   "anexo_1",                       :limit => 20
    t.string   "nombre_1",                      :limit => 200
    t.string   "telefono_2",                    :limit => 80
    t.string   "anexo_2",                       :limit => 20
    t.string   "nombre_2",                      :limit => 200
    t.string   "telefono_3",                    :limit => 80
    t.string   "anexo_3",                       :limit => 20
    t.string   "nombre_3",                      :limit => 200
    t.string   "telefono_4",                    :limit => 80
    t.string   "anexo_4",                       :limit => 20
    t.string   "nombre_4",                      :limit => 200
    t.string   "telefono_5",                    :limit => 80
    t.string   "anexo_5",                       :limit => 20
    t.string   "nombre_5",                      :limit => 200
    t.string   "ruc",                           :limit => 20
    t.string   "anexo_tel_trabajo",             :limit => 20
    t.string   "tipo_via",                      :limit => 40
    t.string   "tipo_ubicacion",                :limit => 20
    t.string   "asesor",                        :limit => 40
    t.integer  "id_estado"
  end

  add_index "carga_recovering", ["id_estado"], :name => "IX_fk_id_estado_carga_carga_recovering"

  create_table "carga_sobregiros", :force => true do |t|
    t.text     "cuenta_contable"
    t.integer  "numero_cuenta"
    t.integer  "numero_cliente"
    t.string   "tipo_documento",                :limit => 20
    t.string   "num_documento",                 :limit => 20
    t.string   "nombre",                        :limit => 150
    t.string   "apell_pater",                   :limit => 250
    t.string   "apell_mater",                   :limit => 200
    t.integer  "dias_mora"
    t.string   "moneda",                        :limit => 200
    t.decimal  "saldo_mora",                                   :precision => 10, :scale => 3
    t.decimal  "pago_minimo",                                  :precision => 10, :scale => 3
    t.string   "direccion_deudor",              :limit => 350
    t.string   "codigo_postal",                 :limit => 20
    t.string   "dist_domicilio",                :limit => 200
    t.string   "prov_domicilio",                :limit => 200
    t.string   "depto_domicilio",               :limit => 200
    t.string   "region_cob",                    :limit => 40
    t.string   "telefono",                      :limit => 80
    t.string   "telefono_1",                    :limit => 80
    t.string   "anexo",                         :limit => 20
    t.string   "nombre_empresa",                :limit => 200
    t.string   "direccion_trabajo",             :limit => 300
    t.string   "cargo_desempenyado",            :limit => 50
    t.string   "telefono_trabajo",              :limit => 80
    t.string   "direccion_adicional",           :limit => 200
    t.string   "tipo_adicional",                :limit => 40
    t.string   "provincia_adicional",           :limit => 40
    t.string   "codigo_postal_adicional",       :limit => 40
    t.string   "zona_ics",                      :limit => 50
    t.string   "nombre_postal_adicional",       :limit => 40
    t.string   "ciudad_postal_adicional",       :limit => 40
    t.string   "departamento_postal_adicional", :limit => 40
    t.string   "region_cob_adicional",          :limit => 40
    t.integer  "numero_direccion"
    t.string   "tramo",                         :limit => 20
    t.string   "plaza",                         :limit => 40
    t.string   "nombre_cartera",                :limit => 150
    t.integer  "validacion"
    t.integer  "id_carga"
    t.integer  "id_deudor"
    t.integer  "id_cartera"
    t.integer  "id_estado_civil"
    t.integer  "id_tip_dcto"
    t.integer  "id_producto"
    t.integer  "id_tipo_producto"
    t.string   "ubi_depto_trabajo",             :limit => 2
    t.string   "ubi_prov_trabajo",              :limit => 4
    t.string   "ubi_dist_trabajo",              :limit => 6
    t.integer  "id_via"
    t.integer  "id_ubicacion"
    t.integer  "id_lugar"
    t.string   "ubi_depto_dom",                 :limit => 2
    t.string   "ubi_prov_dom",                  :limit => 4
    t.string   "ubi_dist_dom",                  :limit => 6
    t.string   "ubi_depto_dom_adicional",       :limit => 2
    t.string   "ubi_prov_dom_adicional",        :limit => 4
    t.string   "ubi_dist_dom_adicional",        :limit => 6
    t.integer  "id_moneda"
    t.string   "nombresx",                      :limit => 150
    t.string   "ind_pat",                       :limit => 80
    t.string   "ind_mat",                       :limit => 80
    t.integer  "id_tipo_direccion_banco",                                                     :default => 1
    t.integer  "id_usuario"
    t.string   "sexo",                          :limit => 1
    t.datetime "fecha_nacimiento"
    t.string   "estado_civil",                  :limit => 80
    t.string   "e_mail",                        :limit => 150
    t.string   "producto",                      :limit => 150
    t.string   "tipo_producto",                 :limit => 150
    t.string   "nombre_producto",               :limit => 150
    t.string   "numero_producto",               :limit => 40
    t.string   "folio_obligacion",              :limit => 30
    t.string   "anexo_1",                       :limit => 20
    t.string   "nombre_1",                      :limit => 200
    t.string   "telefono_2",                    :limit => 80
    t.string   "anexo_2",                       :limit => 20
    t.string   "nombre_2",                      :limit => 200
    t.string   "telefono_3",                    :limit => 80
    t.string   "anexo_3",                       :limit => 20
    t.string   "nombre_3",                      :limit => 200
    t.string   "telefono_4",                    :limit => 80
    t.string   "anexo_4",                       :limit => 20
    t.string   "nombre_4",                      :limit => 200
    t.string   "telefono_5",                    :limit => 80
    t.string   "anexo_5",                       :limit => 20
    t.string   "nombre_5",                      :limit => 200
    t.string   "ruc",                           :limit => 20
    t.string   "anexo_tel_trabajo",             :limit => 20
    t.string   "tipo_via",                      :limit => 40
    t.string   "tipo_ubicacion",                :limit => 20
    t.string   "asesor",                        :limit => 40
    t.integer  "id_estado"
  end

  add_index "carga_sobregiros", ["id_estado"], :name => "IX_fk_carga_sobregiros_estado_carga_sobregiros"

  create_table "codigo", :primary_key => "id_codigo", :force => true do |t|
    t.string  "num_documento", :limit => 200
    t.integer "id_tip_dcto"
    t.integer "id_deudor"
    t.integer "id_estado"
  end

  add_index "codigo", ["id_estado"], :name => "IX_fk_id_estado_codigo_codigo"

  create_table "datos_pagos_errados", :force => true do |t|
    t.string   "folio",          :limit => 20,  :null => false
    t.string   "moneda",         :limit => 200, :null => false
    t.float    "monto"
    t.string   "smonto",         :limit => 200
    t.datetime "fecha_registro"
    t.string   "observacion",    :limit => 200
    t.integer  "id_estado"
  end

  add_index "datos_pagos_errados", ["id_estado"], :name => "IX_fk_estado_pagos_errados_datos_pagos_errados"

  create_table "direccions", :force => true do |t|
    t.text     "direccion"
    t.string   "nro_direccion"
    t.integer  "tb_via_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "direccions", ["tb_via_id"], :name => "index_direccions_on_tb_via_id"

  create_table "puntos_interrupcion", :id => false, :force => true do |t|
    t.string  "cod_punto",   :limit => 20, :null => false
    t.string  "descripcion", :limit => 80
    t.string  "tablaInterr", :limit => 60
    t.integer "id_estado"
  end

  add_index "puntos_interrupcion", ["id_estado"], :name => "IX_fk_estado_puntos_interrupcion_puntos_interrupcion"

  create_table "tb_asignacion", :primary_key => "id_asignacion", :force => true do |t|
    t.integer   "id_usuario",              :null => false
    t.integer   "id_deudor",               :null => false
    t.integer   "id_carga",                :null => false
    t.timestamp "fec_regist", :limit => 6, :null => false
    t.integer   "id_regist",               :null => false
    t.integer   "id_estado",               :null => false
  end

  add_index "tb_asignacion", ["id_carga"], :name => "IX_pk_id_asignacion_tb_asignacion"
  add_index "tb_asignacion", ["id_deudor"], :name => "IX_fk_deudor_asignacion_tb_asignacion"
  add_index "tb_asignacion", ["id_estado"], :name => "IX_fk_estado_asignacion_tb_asignacion"
  add_index "tb_asignacion", ["id_regist"], :name => "IX_fk_usuario_asignacion2_tb_asignacion"
  add_index "tb_asignacion", ["id_usuario"], :name => "IX_fk_usuario_asignacion_tb_asignacion"

  create_table "tb_asignacion_campana", :primary_key => "id_asig_campana", :force => true do |t|
    t.integer   "id_obligacion",              :null => false
    t.integer   "id_usuario",                 :null => false
    t.timestamp "fec_regist",    :limit => 6, :null => false
    t.integer   "id_regist",                  :null => false
    t.integer   "id_estado"
  end

  add_index "tb_asignacion_campana", ["id_estado"], :name => "IX_fk_estado_asignacion_campaña_tb_asignacion_campana"
  add_index "tb_asignacion_campana", ["id_obligacion"], :name => "IX_fk_obligacion_asignacion_campania_tb_asignacion_campana"
  add_index "tb_asignacion_campana", ["id_regist"], :name => "IX_fk_usuario_asignacion_campania_tb_asignacion_campana"
  add_index "tb_asignacion_campana", ["id_usuario"], :name => "IX_fk_usuario_asignacion_campaña_tb_asignacion_campana"

  create_table "tb_aval", :primary_key => "id_aval", :force => true do |t|
    t.integer   "id_deudor",                                                      :null => false
    t.integer   "id_tip_dcto",                                                    :null => false
    t.string    "num_dcto",     :limit => 20,  :default => "0",                   :null => false
    t.string    "ape_pat",      :limit => 200,                                    :null => false
    t.string    "ape_mat",      :limit => 200
    t.string    "nombre",       :limit => 200,                                    :null => false
    t.string    "sexo",         :limit => 1,                                      :null => false
    t.datetime  "fec_nac",                     :default => '0001-01-01 00:00:00', :null => false
    t.timestamp "fec_registro", :limit => 6,                                      :null => false
    t.integer   "id_estado",                                                      :null => false
  end

  add_index "tb_aval", ["id_deudor"], :name => "IX_fk_deudor_aval_tb_aval"
  add_index "tb_aval", ["id_estado"], :name => "IX_fk_estado_aval_tb_aval"
  add_index "tb_aval", ["id_tip_dcto"], :name => "IX_fk_tip_dcto_aval_tb_aval"

  create_table "tb_carga", :primary_key => "id_carga", :force => true do |t|
    t.integer   "id_cartera",                                :null => false
    t.integer   "id_usuario",                                :null => false
    t.string    "nombre",     :limit => 80,                  :null => false
    t.integer   "cantidad",                 :default => 0,   :null => false
    t.string    "codigo",     :limit => 20, :default => "0", :null => false
    t.timestamp "fec_regist", :limit => 6,                   :null => false
    t.integer   "id_estado",                                 :null => false
  end

  add_index "tb_carga", ["id_cartera"], :name => "IX_fk_cartera_carga_tb_carga"
  add_index "tb_carga", ["id_estado"], :name => "IX_fk_estado_carga_tb_carga"
  add_index "tb_carga", ["id_usuario"], :name => "IX_fk_usuario_carga_tb_carga"

  create_table "tb_carga_campaña", :primary_key => "id_campaña", :force => true do |t|
    t.integer "id_carga_campaña", :limit => 8, :null => false
    t.integer "id_deudor",        :limit => 8, :null => false
    t.integer "id_estado"
  end

  add_index "tb_carga_campaña", ["id_estado"], :name => "IX_fk_estado_campaña_carga_tb_carga_campaña"

  create_table "tb_carta", :primary_key => "id_carta", :force => true do |t|
    t.integer   "id_deudor",                    :null => false
    t.integer   "id_usuario",                   :null => false
    t.timestamp "fec_registro",  :limit => 6,   :null => false
    t.string    "membrete",      :limit => 150, :null => false
    t.string    "saludo",        :limit => 100, :null => false
    t.string    "cuerpo",        :limit => 400, :null => false
    t.string    "promocion",     :limit => 250, :null => false
    t.string    "despedida",     :limit => 50,  :null => false
    t.binary    "firma",                        :null => false
    t.string    "cabecera",      :limit => 150
    t.string    "pie_de_pagina", :limit => 150
    t.integer   "id_tipo_carta",                :null => false
    t.integer   "id_estado",                    :null => false
  end

  add_index "tb_carta", ["id_deudor"], :name => "IX_fk_deudor_carta_tb_carta"
  add_index "tb_carta", ["id_estado"], :name => "IX_fk_estado_carta_tb_carta"
  add_index "tb_carta", ["id_tipo_carta"], :name => "IX_fk_tipo_carta_tbcarta_tb_carta"
  add_index "tb_carta", ["id_usuario"], :name => "IX_fk_usuario_carta_tb_carta"

  create_table "tb_cartera", :primary_key => "id_cartera", :force => true do |t|
    t.integer   "id_usuario",                 :null => false
    t.string    "nombre",      :limit => 150, :null => false
    t.string    "descripcion", :limit => 150
    t.timestamp "fec_regist",  :limit => 6,   :null => false
    t.integer   "id_estado",                  :null => false
  end

  add_index "tb_cartera", ["id_estado"], :name => "IX_fk_estado_cartera_tb_cartera"
  add_index "tb_cartera", ["id_usuario"], :name => "IX_fk_usuario_cartera_tb_cartera"

  create_table "tb_ciclo", :primary_key => "id_ciclo", :force => true do |t|
    t.integer   "id_usuario",               :null => false
    t.integer   "dias_inicio",              :null => false
    t.integer   "dias_final",               :null => false
    t.timestamp "fec_regist",  :limit => 6, :null => false
    t.integer   "id_estado",                :null => false
  end

  add_index "tb_ciclo", ["id_estado"], :name => "IX_fk_estado_ciclo_tb_ciclo"
  add_index "tb_ciclo", ["id_usuario"], :name => "IX_fk_usuario_ciclo_tb_ciclo"

  create_table "tb_combinaciones", :primary_key => "id_combinaciones", :force => true do |t|
    t.integer "id_tipo_contacto",     :null => false
    t.integer "id_resultado_gestion", :null => false
    t.integer "id_estado",            :null => false
  end

  add_index "tb_combinaciones", ["id_estado"], :name => "IX_fk_id_estado_tb_combinaciones"
  add_index "tb_combinaciones", ["id_tipo_contacto"], :name => "IX_fk_id_tipo_contacto_0_tb_combinaciones"

  create_table "tb_conyugue", :primary_key => "id_conyugue", :force => true do |t|
    t.integer   "id_deudor",                                                      :null => false
    t.integer   "id_tip_dcto",                                                    :null => false
    t.string    "num_dcto",     :limit => 20,  :default => "0",                   :null => false
    t.string    "ape_pat",      :limit => 200,                                    :null => false
    t.string    "ape_mat",      :limit => 200
    t.string    "nombre",       :limit => 200,                                    :null => false
    t.string    "sexo",         :limit => 1,   :default => "M"
    t.datetime  "fec_nac",                     :default => '0001-01-01 00:00:00', :null => false
    t.timestamp "fec_registro", :limit => 6,                                      :null => false
    t.integer   "id_usuario",                                                     :null => false
    t.integer   "id_estado",                                                      :null => false
  end

  add_index "tb_conyugue", ["id_deudor"], :name => "IX_fk_deudor_conyugue_tb_conyugue"
  add_index "tb_conyugue", ["id_estado"], :name => "IX_fk_estado_conyugue_tb_conyugue"
  add_index "tb_conyugue", ["id_tip_dcto"], :name => "IX_fk_tip_dcto_conyugue_tb_conyugue"
  add_index "tb_conyugue", ["id_usuario"], :name => "IX_fk_usuario_conyugue_tb_conyugue"

  create_table "tb_deudor", :primary_key => "id_deudor", :force => true do |t|
    t.integer   "id_carga",                                                                  :null => false
    t.integer   "id_tipo_deudor",                         :default => 1,                     :null => false
    t.integer   "id_estado_civil",                                                           :null => false
    t.integer   "id_tip_dcto",                                                               :null => false
    t.string    "num_dcto",                :limit => 20,  :default => "0",                   :null => false
    t.string    "ape_pat",                 :limit => 200
    t.string    "ape_mat",                 :limit => 200
    t.string    "nombre",                  :limit => 200
    t.string    "sexo",                    :limit => 1,   :default => "M"
    t.datetime  "fec_nac",                                :default => '0001-01-01 00:00:00'
    t.string    "email",                   :limit => 20
    t.timestamp "fec_registro",            :limit => 6,                                      :null => false
    t.string    "id_dist",                 :limit => 6,                                      :null => false
    t.integer   "id_ubicabilidad",                                                           :null => false
    t.integer   "id_tipo_direccion_banco",                                                   :null => false
    t.integer   "id_motivo_nopago",                                                          :null => false
    t.integer   "id_habito",                                                                 :null => false
    t.integer   "id_estado",                                                                 :null => false
  end

  add_index "tb_deudor", ["id_carga"], :name => "IX_fk_carga_deudor_tb_deudor"
  add_index "tb_deudor", ["id_dist"], :name => "IX_fk_ubigeo_deudor_tb_deudor"
  add_index "tb_deudor", ["id_estado"], :name => "IX_fk_estado_deudor_tb_deudor"
  add_index "tb_deudor", ["id_estado_civil"], :name => "IX_fk_estado_civil_deudor_tb_deudor"
  add_index "tb_deudor", ["id_habito"], :name => "IX_fk_habito_de_pago_tb_deudor"
  add_index "tb_deudor", ["id_motivo_nopago"], :name => "IX_fk_id_motivo_nopago_tb_deudor"
  add_index "tb_deudor", ["id_tip_dcto"], :name => "IX_fk_tip_dcto_deudor_tb_deudor"
  add_index "tb_deudor", ["id_tipo_deudor"], :name => "IX_fk_tipo_deudor_deudor_tb_deudor"
  add_index "tb_deudor", ["id_tipo_direccion_banco"], :name => "IX_fk_id_tipo_direccion_banco_tb_deudor"
  add_index "tb_deudor", ["id_ubicabilidad"], :name => "IX_fk_ubicabilidad_deudor_tb_deudor"

  create_table "tb_direccion_aval", :primary_key => "id_direccion_aval", :force => true do |t|
    t.integer   "id_aval",                                               :null => false
    t.integer   "id_tipo_direccion",                                     :null => false
    t.string    "id_dist",           :limit => 6,   :default => "10101", :null => false
    t.integer   "id_via",                                                :null => false
    t.integer   "id_ubicacion",                                          :null => false
    t.integer   "id_lugar",                                              :null => false
    t.string    "nombre",            :limit => 200,                      :null => false
    t.string    "numero",            :limit => 20,  :default => "0",     :null => false
    t.string    "manzana",           :limit => 20
    t.string    "lote",              :limit => 20
    t.string    "numero_ubicacion",  :limit => 20
    t.string    "nombre_lugar",      :limit => 200
    t.string    "cuadrante",         :limit => 20,  :default => "0",     :null => false
    t.string    "telefono",          :limit => 80,  :default => "0",     :null => false
    t.string    "anexo",             :limit => 20,  :default => "0",     :null => false
    t.timestamp "fec_registro",      :limit => 6,                        :null => false
    t.integer   "id_usuario",                                            :null => false
    t.integer   "id_estado",                                             :null => false
  end

  add_index "tb_direccion_aval", ["id_aval"], :name => "IX_fk_aval_direccion_aval_tb_direccion_aval"
  add_index "tb_direccion_aval", ["id_dist"], :name => "IX_fk_ubigeo_direccion_aval_tb_direccion_aval"
  add_index "tb_direccion_aval", ["id_estado"], :name => "IX_fk_estado_direccion_aval_tb_direccion_aval"
  add_index "tb_direccion_aval", ["id_lugar"], :name => "IX_fk_lugar_direccion_aval_tb_direccion_aval"
  add_index "tb_direccion_aval", ["id_tipo_direccion"], :name => "IX_fk_tipo_direccion_direccion_aval_tb_direccion_aval"
  add_index "tb_direccion_aval", ["id_ubicacion"], :name => "IX_fk_ubicacion_direccion_aval_tb_direccion_aval"
  add_index "tb_direccion_aval", ["id_usuario"], :name => "IX_fk_usuario_direccion_aval_tb_direccion_aval"
  add_index "tb_direccion_aval", ["id_via"], :name => "IX_fk_via_direccion_aval_tb_direccion_aval"

  create_table "tb_direccion_conyugue", :primary_key => "id_direccion_conyugue", :force => true do |t|
    t.integer   "id_conyugue",                                           :null => false
    t.integer   "id_tipo_direccion",                                     :null => false
    t.string    "id_dist",           :limit => 6,   :default => "10101", :null => false
    t.integer   "id_via",                                                :null => false
    t.integer   "id_ubicacion",                                          :null => false
    t.integer   "id_lugar",                                              :null => false
    t.string    "nombre",            :limit => 200,                      :null => false
    t.string    "numero",            :limit => 20,  :default => "0",     :null => false
    t.string    "manzana",           :limit => 20
    t.string    "lote",              :limit => 20
    t.string    "numero_ubicacion",  :limit => 20
    t.string    "nombre_lugar",      :limit => 200
    t.string    "cuadrante",         :limit => 20,  :default => "0",     :null => false
    t.string    "telefono",          :limit => 80,  :default => "0",     :null => false
    t.string    "anexo",             :limit => 20,  :default => "0",     :null => false
    t.timestamp "fec_registro",      :limit => 6,                        :null => false
    t.integer   "id_usuario",                                            :null => false
    t.integer   "id_estado",                                             :null => false
  end

  add_index "tb_direccion_conyugue", ["id_conyugue"], :name => "IX_fk_conyugue_direccion_conyugue_tb_direccion_conyugue"
  add_index "tb_direccion_conyugue", ["id_dist"], :name => "IX_fk_ubigeo_direccion_conyugue_tb_direccion_conyugue"
  add_index "tb_direccion_conyugue", ["id_estado"], :name => "IX_fk_estado_direccion_conyugue_tb_direccion_conyugue"
  add_index "tb_direccion_conyugue", ["id_lugar"], :name => "IX_fk_lugar_direccion_conyugue_tb_direccion_conyugue"
  add_index "tb_direccion_conyugue", ["id_tipo_direccion"], :name => "IX_fk_tipo_direccion_direccion_conyugue_tb_direccion_conyugue"
  add_index "tb_direccion_conyugue", ["id_ubicacion"], :name => "IX_fk_ubicacion_direccion_conyugue_tb_direccion_conyugue"
  add_index "tb_direccion_conyugue", ["id_usuario"], :name => "IX_fk_usuario_direccion_conyugue_tb_direccion_conyugue"
  add_index "tb_direccion_conyugue", ["id_via"], :name => "IX_fk_via_direccion_conyugue_tb_direccion_conyugue"

  create_table "tb_direccion_deudor", :primary_key => "id_direccion_deudor", :force => true do |t|
    t.integer   "id_deudor",                                               :null => false
    t.integer   "id_tipo_direccion",                                       :null => false
    t.string    "id_dist",             :limit => 6,   :default => "10101", :null => false
    t.integer   "id_via",                                                  :null => false
    t.integer   "id_ubicacion",                                            :null => false
    t.integer   "id_lugar",                                                :null => false
    t.string    "nombre",              :limit => 200
    t.string    "numero",              :limit => 20
    t.string    "manzana",             :limit => 20
    t.string    "lote",                :limit => 20
    t.string    "numero_ubicacion",    :limit => 20
    t.string    "nombre_lugar",        :limit => 200
    t.string    "cuadrante",           :limit => 20,  :default => "0"
    t.string    "telefono",            :limit => 80,  :default => "0"
    t.string    "anexo",               :limit => 20,  :default => "0"
    t.timestamp "fec_registro",        :limit => 6,                        :null => false
    t.integer   "id_usuario",                                              :null => false
    t.integer   "id_origen_direccion",                                     :null => false
    t.integer   "id_estado",                                               :null => false
  end

  add_index "tb_direccion_deudor", ["id_deudor"], :name => "IX_fk_deudor_direccion_deudor_tb_direccion_deudor"
  add_index "tb_direccion_deudor", ["id_dist"], :name => "IX_fk_ubigeo_direccion_deudor_tb_direccion_deudor"
  add_index "tb_direccion_deudor", ["id_estado"], :name => "IX_fk_estado_direccion_deudor_tb_direccion_deudor"
  add_index "tb_direccion_deudor", ["id_lugar"], :name => "IX_fk_lugar_direccion_deudor_tb_direccion_deudor"
  add_index "tb_direccion_deudor", ["id_origen_direccion"], :name => "IX_fk_origen_direccion_deudor_tb_direccion_deudor"
  add_index "tb_direccion_deudor", ["id_tipo_direccion"], :name => "IX_fk_tipo_direccion_direccion_deudor_tb_direccion_deudor"
  add_index "tb_direccion_deudor", ["id_ubicacion"], :name => "IX_fk_ubicacion_direccion_deudor_tb_direccion_deudor"
  add_index "tb_direccion_deudor", ["id_usuario"], :name => "IX_fk_usuario_direccion_deudor_tb_direccion_deudor"
  add_index "tb_direccion_deudor", ["id_via"], :name => "IX_fk_vias_direccion_deudor_tb_direccion_deudor"

  create_table "tb_direccion_trabajo", :primary_key => "id_direccion_trabajo", :force => true do |t|
    t.integer   "id_deudor",                                             :null => false
    t.integer   "id_tipo_direccion",                                     :null => false
    t.string    "id_dist",           :limit => 6,   :default => "10101", :null => false
    t.string    "nombre_trabajo",    :limit => 200
    t.string    "ruc",               :limit => 20
    t.string    "direccion",         :limit => 200
    t.string    "telefono",          :limit => 80,  :default => "0",     :null => false
    t.string    "anexo",             :limit => 20,  :default => "0",     :null => false
    t.timestamp "fec_registro",      :limit => 6,                        :null => false
    t.integer   "id_usuario",                                            :null => false
    t.integer   "id_estado",                                             :null => false
  end

  add_index "tb_direccion_trabajo", ["id_deudor"], :name => "IX_fk_deudor_direccion_trabajo_tb_direccion_trabajo"
  add_index "tb_direccion_trabajo", ["id_dist"], :name => "IX_fk_ubigeo_direccion_trabajo_tb_direccion_trabajo"
  add_index "tb_direccion_trabajo", ["id_estado"], :name => "IX_fk_estado_direccion_trabajo_tb_direccion_trabajo"
  add_index "tb_direccion_trabajo", ["id_tipo_direccion"], :name => "IX_fk_tipo_direccion_direccion_trabajo_tb_direccion_trabajo"
  add_index "tb_direccion_trabajo", ["id_usuario"], :name => "IX_fk_usuario_direccion_trabajo_tb_direccion_trabajo"

  create_table "tb_estado", :id => false, :force => true do |t|
    t.integer   "id_estado",                  :null => false
    t.string    "descripcion",  :limit => 80, :null => false
    t.timestamp "fec_registro", :limit => 6,  :null => false
  end

  create_table "tb_estado_civil", :primary_key => "id_estado_civil", :force => true do |t|
    t.string    "descripcion",  :limit => 80,                  :null => false
    t.string    "equivalencia", :limit => 20, :default => "-", :null => false
    t.timestamp "fec_registro", :limit => 6,                   :null => false
    t.integer   "id_estado",                                   :null => false
  end

  add_index "tb_estado_civil", ["id_estado"], :name => "IX_fk_estado_estado_civil_tb_estado_civil"

  create_table "tb_gestion", :primary_key => "id_gestion", :force => true do |t|
    t.integer   "id_deudor",                           :null => false
    t.integer   "id_carga",                            :null => false
    t.integer   "id_tipo_gestion",                     :null => false
    t.integer   "id_tipo_contacto",                    :null => false
    t.string    "telefono",             :limit => 20,  :null => false
    t.integer   "direccion",                           :null => false
    t.string    "observaciones",        :limit => 300, :null => false
    t.timestamp "fecha_registro",       :limit => 6,   :null => false
    t.datetime  "fecha_rellamada"
    t.string    "flag",                 :limit => 1,   :null => false
    t.integer   "id_usuario",                          :null => false
    t.integer   "id_promesa",                          :null => false
    t.integer   "id_resultado_gestion",                :null => false
    t.integer   "id_estado",                           :null => false
  end

  add_index "tb_gestion", ["id_carga"], :name => "IX_fk_id_carga_tb_gestion"
  add_index "tb_gestion", ["id_deudor"], :name => "IX_fk_id_deudor_tb_gestion"
  add_index "tb_gestion", ["id_estado"], :name => "IX_fk_id_estado_tb_gestion"
  add_index "tb_gestion", ["id_resultado_gestion"], :name => "IX_fk_id_resultado_gestion_tb_gestion"
  add_index "tb_gestion", ["id_tipo_contacto"], :name => "IX_fk_id_tipo_contacto_tb_gestion"
  add_index "tb_gestion", ["id_tipo_gestion"], :name => "IX_fk_id_tipo_gestion_tb_gestion"
  add_index "tb_gestion", ["id_usuario"], :name => "IX_fk_id_usuario_tb_gestion"

  create_table "tb_habito_pago", :primary_key => "id_habito", :force => true do |t|
    t.string  "descripcion",  :limit => 200
    t.string  "equivalencia", :limit => 50
    t.integer "id_estado",                   :null => false
  end

  add_index "tb_habito_pago", ["id_estado"], :name => "IX_fk_id_estado_habito_tb_habito_pago"

  create_table "tb_historico_obligacion", :primary_key => "id_obligacion", :force => true do |t|
    t.integer   "id_usuario",                                                    :null => false
    t.integer   "id_moneda",                                                     :null => false
    t.integer   "id_ciclo",                                                      :null => false
    t.decimal   "pago_total",                     :precision => 10, :scale => 3, :null => false
    t.datetime  "fecha_vencimiento",                                             :null => false
    t.timestamp "fec_registro",      :limit => 6,                                :null => false
    t.integer   "id_estado",                                                     :null => false
  end

  add_index "tb_historico_obligacion", ["id_ciclo"], :name => "IX_fk_ciclo_hist_obligacion_tb_historico_obligacion"
  add_index "tb_historico_obligacion", ["id_estado"], :name => "IX_fk_estado_hist_obligacion_tb_historico_obligacion"
  add_index "tb_historico_obligacion", ["id_moneda"], :name => "IX_fk_moneda_historico_obligacion_tb_historico_obligacion"
  add_index "tb_historico_obligacion", ["id_usuario"], :name => "IX_fk_usuario_hist_obligacion_tb_historico_obligacion"

  create_table "tb_historico_usuario", :primary_key => "id_detalle_usuario", :force => true do |t|
    t.datetime "fecha_modificacion", :null => false
    t.datetime "fec_registro",       :null => false
    t.integer  "id_usuario",         :null => false
    t.integer  "id_estado",          :null => false
  end

  add_index "tb_historico_usuario", ["id_estado"], :name => "IX_fk_estado_detalle_usuario_tb_historico_usuario"
  add_index "tb_historico_usuario", ["id_usuario"], :name => "IX_fk_usuario_detalle_usuario_tb_historico_usuario"

  create_table "tb_lugar", :primary_key => "id_lugar", :force => true do |t|
    t.string    "descripcion",  :limit => 80, :null => false
    t.timestamp "fec_registro", :limit => 6,  :null => false
    t.integer   "id_estado",                  :null => false
  end

  add_index "tb_lugar", ["id_estado"], :name => "IX_fk_estado_lugar_tb_lugar"

  create_table "tb_marca", :primary_key => "id_marca", :force => true do |t|
    t.string   "desc_corta",     :limit => 10, :null => false
    t.string   "descripcion",    :limit => 50, :null => false
    t.datetime "fecha_registro",               :null => false
    t.integer  "id_estado",                    :null => false
  end

  add_index "tb_marca", ["id_estado"], :name => "IX_fk_id_estado_tb_marca"

  create_table "tb_modulo", :primary_key => "id_modulo", :force => true do |t|
    t.integer   "id_tipo_modulo",                :null => false
    t.string    "nombre_modulo",  :limit => 200, :null => false
    t.timestamp "fec_registro",   :limit => 6,   :null => false
    t.integer   "id_estado",                     :null => false
  end

  add_index "tb_modulo", ["id_estado"], :name => "IX_fk_estado_modulo_tb_modulo"
  add_index "tb_modulo", ["id_tipo_modulo"], :name => "IX_fk_tipo_modulo_modulo_tb_modulo"

  create_table "tb_moneda", :primary_key => "id_moneda", :force => true do |t|
    t.string    "descripcion",  :limit => 200, :null => false
    t.timestamp "fec_registro", :limit => 6,   :null => false
    t.integer   "id_estado",                   :null => false
  end

  add_index "tb_moneda", ["id_estado"], :name => "IX_fk_id_estado_moneda_tb_moneda"

  create_table "tb_motivo_nopago", :primary_key => "id_motivo_nopago", :force => true do |t|
    t.string    "descripcion",  :limit => 250, :null => false
    t.string    "equivalencia", :limit => 250, :null => false
    t.timestamp "fec_regist",   :limit => 6,   :null => false
    t.integer   "id_estado",                   :null => false
  end

  add_index "tb_motivo_nopago", ["id_estado"], :name => "IX_fk_tb_usuario_tb_motivo_nopago"

  create_table "tb_obligacion", :primary_key => "id_obligacion", :force => true do |t|
    t.integer   "id_deudor",                                                                        :null => false
    t.integer   "id_carga",                                                                         :null => false
    t.integer   "id_moneda",                                                                        :null => false
    t.integer   "id_producto",                                                                      :null => false
    t.integer   "id_ciclo",                                                                         :null => false
    t.integer   "id_tipo_producto",                                                                 :null => false
    t.string    "nombre_producto",   :limit => 150
    t.string    "numero",            :limit => 20,                                                  :null => false
    t.string    "folio",             :limit => 20
    t.decimal   "pago_total",                       :precision => 10, :scale => 3,                  :null => false
    t.decimal   "pago_minimo",                      :precision => 10, :scale => 3, :default => 0.0
    t.datetime  "fecha_vencimiento",                                                                :null => false
    t.timestamp "fec_regist",        :limit => 6,                                                   :null => false
    t.integer   "id_usuario",                                                                       :null => false
    t.integer   "id_estado"
  end

  add_index "tb_obligacion", ["id_carga"], :name => "IX_fk_carga_obligacion_tb_obligacion"
  add_index "tb_obligacion", ["id_ciclo"], :name => "IX_fk_ciclo_obligacion_tb_obligacion"
  add_index "tb_obligacion", ["id_deudor"], :name => "IX_fk_deudor_obligacion_tb_obligacion"
  add_index "tb_obligacion", ["id_estado"], :name => "IX_fk_estado_obligacion_tb_obligacion"
  add_index "tb_obligacion", ["id_moneda"], :name => "IX_fk_moneda_obligacion_tb_obligacion"
  add_index "tb_obligacion", ["id_producto"], :name => "IX_fk_producto_obligacion_tb_obligacion"
  add_index "tb_obligacion", ["id_tipo_producto"], :name => "IX_fk_tipo_producto_obligacion_tb_obligacion"
  add_index "tb_obligacion", ["id_usuario"], :name => "IX_fk_usuario_obligacion_tb_obligacion"

  create_table "tb_origen_direccion", :primary_key => "id_origen_direccion", :force => true do |t|
    t.string    "descripcion",  :limit => 100, :null => false
    t.timestamp "fec_registro", :limit => 6,   :null => false
    t.integer   "id_estado"
  end

  add_index "tb_origen_direccion", ["id_estado"], :name => "IX_fk_estado_origne_tb_origen_direccion"

  create_table "tb_pagos", :primary_key => "id_pago", :force => true do |t|
    t.integer   "id_obligacion",                                                 :null => false
    t.integer   "id_ciclo",                                                      :null => false
    t.integer   "id_moneda"
    t.decimal   "monto",                          :precision => 10, :scale => 3, :null => false
    t.datetime  "fec_pago"
    t.integer   "dias_mora",                                                     :null => false
    t.timestamp "fec_regist",        :limit => 6,                                :null => false
    t.integer   "id_agente_interno",                                             :null => false
    t.integer   "id_agente_externo",                                             :null => false
    t.integer   "id_estado",                                                     :null => false
  end

  add_index "tb_pagos", ["id_agente_externo"], :name => "IX_fk_usuario_pagos2_tb_pagos"
  add_index "tb_pagos", ["id_agente_interno"], :name => "IX_fk_usuario_pagos_tb_pagos"
  add_index "tb_pagos", ["id_ciclo"], :name => "IX_fk_ciclo_pagos_tb_pagos"
  add_index "tb_pagos", ["id_estado"], :name => "IX_fk_estado_pagos_tb_pagos"
  add_index "tb_pagos", ["id_moneda"], :name => "IX_fk_id_moneda_pagos_tb_pagos"
  add_index "tb_pagos", ["id_obligacion"], :name => "IX_fk_obligacion_pagos_tb_pagos"

  create_table "tb_permisos_usuario", :primary_key => "id_permiso_usuario", :force => true do |t|
    t.integer   "id_modulo",               :null => false
    t.timestamp "fec_regist", :limit => 6, :null => false
    t.integer   "id_usuario"
    t.integer   "id_estado"
  end

  add_index "tb_permisos_usuario", ["id_estado"], :name => "IX_fk_estado_permisos_usuario_tb_permisos_usuario"
  add_index "tb_permisos_usuario", ["id_modulo"], :name => "IX_fk_modulo_permiso_usuario_tb_permisos_usuario"
  add_index "tb_permisos_usuario", ["id_usuario"], :name => "IX_fk_usuario_permisos_usuario_tb_permisos_usuario"

  create_table "tb_producto", :primary_key => "id_producto", :force => true do |t|
    t.string    "descripcion",  :limit => 200,                  :null => false
    t.string    "equivalencia", :limit => 20,  :default => "-", :null => false
    t.timestamp "fec_registro", :limit => 6,                    :null => false
    t.integer   "id_usuario",                                   :null => false
    t.integer   "id_estado",                                    :null => false
  end

  add_index "tb_producto", ["id_estado"], :name => "IX_fk_estado_producto_tb_producto"
  add_index "tb_producto", ["id_usuario"], :name => "IX_fk_usuario_producto_tb_producto"

  create_table "tb_promesa", :primary_key => "id_promesa", :force => true do |t|
    t.integer  "id_obligacion",  :null => false
    t.datetime "fecha_registro", :null => false
    t.datetime "fecha_promesa"
    t.float    "monto_promesa",  :null => false
    t.integer  "id_usuario",     :null => false
    t.integer  "id_estado",      :null => false
  end

  add_index "tb_promesa", ["id_estado"], :name => "IX_fk_id_estado_tb_promesa"
  add_index "tb_promesa", ["id_obligacion"], :name => "IX_fk_id_obligacion_tb_promesa"
  add_index "tb_promesa", ["id_usuario"], :name => "IX_fk_id_usuario_tb_promesa"

  create_table "tb_resultado_gestion", :primary_key => "id_resultado_gestion", :force => true do |t|
    t.integer   "id_cartera",                    :null => false
    t.integer   "id_tipo_usuario",               :null => false
    t.string    "descripcion",     :limit => 50, :null => false
    t.string    "equivalencia",    :limit => 50
    t.timestamp "fecha_registro",  :limit => 6,  :null => false
    t.integer   "id_estado",                     :null => false
  end

  add_index "tb_resultado_gestion", ["id_cartera"], :name => "IX_fk_id_cartera_tb_resultado_gestion"
  add_index "tb_resultado_gestion", ["id_estado"], :name => "IX_fk_id_estado_tb_resultado_gestion"
  add_index "tb_resultado_gestion", ["id_tipo_usuario"], :name => "IX_fk_tipo_usuario_tb_resultado_gestion"

  create_table "tb_telefono", :primary_key => "id_telefono", :force => true do |t|
    t.integer   "id_deudor",                                  :null => false
    t.string    "origen",     :limit => 20,  :default => "1", :null => false
    t.string    "telefono",   :limit => 180, :default => "0"
    t.string    "anexo",      :limit => 200, :default => "0"
    t.string    "nombre",     :limit => 200
    t.timestamp "fec_regist", :limit => 6,                    :null => false
    t.integer   "id_usuario",                                 :null => false
    t.integer   "id_estado",                                  :null => false
  end

  add_index "tb_telefono", ["id_deudor"], :name => "IX_fk_deudor_telefono_tb_telefono"
  add_index "tb_telefono", ["id_estado"], :name => "IX_fk_estado_telefono_tb_telefono"
  add_index "tb_telefono", ["id_usuario"], :name => "IX_fk_usuario_telefono_tb_telefono"

  create_table "tb_tipo_carta", :primary_key => "id_tipo_carta", :force => true do |t|
    t.string    "descripcion",  :limit => 50, :null => false
    t.timestamp "fec_registro", :limit => 6,  :null => false
    t.integer   "id_estado"
  end

  add_index "tb_tipo_carta", ["id_estado"], :name => "IX_fk_estado_tipo_carta_tb_tipo_carta"

  create_table "tb_tipo_cartera", :id => false, :force => true do |t|
    t.integer   "id_tipo_cartera",                :null => false
    t.string    "descripcion",     :limit => 200, :null => false
    t.timestamp "fec_registro",    :limit => 6,   :null => false
    t.integer   "id_estado",                      :null => false
  end

  add_index "tb_tipo_cartera", ["id_estado"], :name => "IX_fk_id_estado_tb_tipo_cartera"

  create_table "tb_tipo_contacto", :primary_key => "id_tipo_contacto", :force => true do |t|
    t.integer   "id_cartera",                    :null => false
    t.integer   "id_tipo_usuario",               :null => false
    t.string    "descripcion",     :limit => 50, :null => false
    t.timestamp "fecha_registro",  :limit => 6,  :null => false
    t.string    "equivalencia",    :limit => 20
    t.integer   "id_estado",                     :null => false
  end

  add_index "tb_tipo_contacto", ["id_cartera"], :name => "IX_fk_id_cartera_tb_tipo_contacto"
  add_index "tb_tipo_contacto", ["id_estado"], :name => "IX_fk_id_estado_tb_tipo_contacto"
  add_index "tb_tipo_contacto", ["id_tipo_usuario"], :name => "IX_fk_id_tipo_usuario_tb_tipo_contacto"

  create_table "tb_tipo_deudor", :id => false, :force => true do |t|
    t.integer   "id_tipo_deudor",                                 :null => false
    t.string    "descripcion",    :limit => 150,                  :null => false
    t.string    "equivalencia",   :limit => 20,  :default => "-", :null => false
    t.timestamp "fec_registro",   :limit => 6,                    :null => false
    t.integer   "id_estado",                                      :null => false
  end

  add_index "tb_tipo_deudor", ["id_estado"], :name => "IX_fk_estado_tipo_deudor_tb_tipo_deudor"

  create_table "tb_tipo_direccion", :primary_key => "id_tipo_direccion", :force => true do |t|
    t.string    "descripcion",  :limit => 80, :null => false
    t.timestamp "fec_registro", :limit => 6,  :null => false
    t.integer   "id_estado"
  end

  add_index "tb_tipo_direccion", ["id_estado"], :name => "IX_fk_estado_tipo_direccion_tb_tipo_direccion"

  create_table "tb_tipo_direccion_banco", :primary_key => "id_tipo_direccion_banco", :force => true do |t|
    t.string   "descripcion",  :limit => 200, :null => false
    t.datetime "fec_registro",                :null => false
    t.integer  "id_estado",                   :null => false
  end

  add_index "tb_tipo_direccion_banco", ["id_estado"], :name => "IX_fk_id_estado_tb_tipo_direccion_banco"

  create_table "tb_tipo_documento", :primary_key => "id_tip_dcto", :force => true do |t|
    t.string    "descripcion",  :limit => 80,                  :null => false
    t.string    "equivalencia", :limit => 20, :default => "-", :null => false
    t.timestamp "fec_registro", :limit => 6,                   :null => false
    t.integer   "id_estado",                                   :null => false
  end

  add_index "tb_tipo_documento", ["id_estado"], :name => "IX_fk_estado_documento_tb_tipo_documento"

  create_table "tb_tipo_gestion", :primary_key => "id_tipo_gestion", :force => true do |t|
    t.integer   "id_tipo_usuario",               :null => false
    t.string    "descripcion",     :limit => 50, :null => false
    t.string    "equivalencia",    :limit => 20
    t.timestamp "fecha_registro",  :limit => 6,  :null => false
    t.integer   "id_estado",                     :null => false
  end

  add_index "tb_tipo_gestion", ["id_estado"], :name => "IX_fk_id_estado_tb_tipo_gestion"
  add_index "tb_tipo_gestion", ["id_tipo_usuario"], :name => "IX_fk_id_tipo_usuario_tb_tipo_gestion"

  create_table "tb_tipo_modulo", :primary_key => "id_tipo_modulo", :force => true do |t|
    t.string    "nombre_tipo",  :limit => 100, :null => false
    t.timestamp "fec_registro", :limit => 6,   :null => false
    t.integer   "id_estado"
  end

  add_index "tb_tipo_modulo", ["id_estado"], :name => "IX_fk_estado_tipo_modulo_tb_tipo_modulo"

  create_table "tb_tipo_producto", :primary_key => "id_tipo_producto", :force => true do |t|
    t.string    "descripcion",  :limit => 200,                  :null => false
    t.string    "equivalencia", :limit => 20,  :default => "-", :null => false
    t.timestamp "fec_registro", :limit => 6,                    :null => false
    t.integer   "id_usuario",                                   :null => false
    t.integer   "id_estado",                                    :null => false
  end

  add_index "tb_tipo_producto", ["id_estado"], :name => "IX_fk_estado_tipo_producto_tb_tipo_producto"
  add_index "tb_tipo_producto", ["id_usuario"], :name => "IX_fk_usuario_tipo_producto_tb_tipo_producto"

  create_table "tb_tipo_usuario", :primary_key => "id_tipo_usuario", :force => true do |t|
    t.string    "descripcion",  :limit => 200, :null => false
    t.timestamp "fec_registro", :limit => 6,   :null => false
    t.integer   "id_estado",                   :null => false
  end

  add_index "tb_tipo_usuario", ["id_estado"], :name => "IX_fk_estado_tipo_usuario_tb_tipo_usuario"

  create_table "tb_ubicabilidad", :primary_key => "id_ubicabilidad", :force => true do |t|
    t.string    "descripcion",  :limit => 200, :null => false
    t.timestamp "fec_registro", :limit => 6,   :null => false
    t.integer   "id_estado",                   :null => false
  end

  add_index "tb_ubicabilidad", ["id_estado"], :name => "IX_fk_estado_ubicabilidad_tb_ubicabilidad"

  create_table "tb_ubicacion", :primary_key => "id_ubicacion", :force => true do |t|
    t.string    "descripcion",  :limit => 80, :null => false
    t.timestamp "fec_registro", :limit => 6,  :null => false
    t.integer   "id_estado",                  :null => false
  end

  add_index "tb_ubicacion", ["id_estado"], :name => "IX_fk_estado_ubicacion_tb_ubicacion"

  create_table "tb_ubigeo", :id => false, :force => true do |t|
    t.string    "id_dist",      :limit => 6,                    :null => false
    t.string    "nombre_dist",  :limit => 200,                  :null => false
    t.string    "id_prov",      :limit => 4,                    :null => false
    t.string    "nombre_prov",  :limit => 200,                  :null => false
    t.string    "id_dpto",      :limit => 2,                    :null => false
    t.string    "nombre_dpto",  :limit => 200,                  :null => false
    t.string    "equivalencia", :limit => 20,  :default => "-", :null => false
    t.timestamp "fec_registro", :limit => 6,                    :null => false
    t.integer   "id_estado",                                    :null => false
  end

  add_index "tb_ubigeo", ["id_estado"], :name => "IX_fk_estado_ubigeo_tb_ubigeo"

  create_table "tb_ubigeo_carga", :id => false, :force => true do |t|
    t.string "id_dist",     :limit => 6,   :null => false
    t.string "nombre_dist", :limit => 200, :null => false
    t.string "id_prov",     :limit => 4,   :null => false
    t.string "nombre_prov", :limit => 200, :null => false
    t.string "id_dpto",     :limit => 2,   :null => false
    t.string "nombre_dpto", :limit => 200, :null => false
  end

  create_table "tb_usuario", :primary_key => "id_usuario", :force => true do |t|
    t.integer  "id_tipo_usuario",                                 :null => false
    t.string   "usuario",         :limit => 20,                   :null => false
    t.string   "password",        :limit => 32,                   :null => false
    t.string   "ape_pat",         :limit => 200,                  :null => false
    t.string   "ape_mat",         :limit => 200
    t.string   "nombre",          :limit => 200,                  :null => false
    t.string   "num_dcto",        :limit => 20,  :default => "0", :null => false
    t.string   "codigo_interno",  :limit => 20,  :default => "0", :null => false
    t.datetime "fec_regist",                                      :null => false
    t.string   "datos",           :limit => 100
    t.integer  "id_register",                                     :null => false
    t.integer  "id_estado"
  end

  add_index "tb_usuario", ["id_estado"], :name => "IX_fk_estado_usuario_tb_usuario"
  add_index "tb_usuario", ["id_tipo_usuario"], :name => "IX_fk_tipo_usuario_usuario_tb_usuario"

  create_table "tb_via", :primary_key => "id_via", :force => true do |t|
    t.string    "descripcion",  :limit => 80, :null => false
    t.timestamp "fec_registro", :limit => 6,  :null => false
    t.integer   "id_estado",                  :null => false
  end

  add_index "tb_via", ["id_estado"], :name => "IX_fk_estado_vias_tb_via"

  create_table "tb_visita", :primary_key => "id_visita", :force => true do |t|
    t.integer   "id_deudor",                   :null => false
    t.integer   "id_usuario",                  :null => false
    t.timestamp "fecha_registro", :limit => 6, :null => false
    t.integer   "id_estado",                   :null => false
  end

  add_index "tb_visita", ["id_deudor"], :name => "IX_fk_id_deudor_tb_visita"
  add_index "tb_visita", ["id_estado"], :name => "IX_fk_id_estado_visita_tb_visita"

end
