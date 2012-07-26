class TbVium < ActiveRecord::Base
  attr_accessible :descripcion, :fec_registro, :id_estado, :id_via


has_many :tb_via
end
