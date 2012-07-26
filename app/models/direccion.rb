class Direccion < ActiveRecord::Base
  belongs_to :tb_via
  attr_accessible :direccion, :nro_direccion

  validates :direccion, :presence => true

  

end
