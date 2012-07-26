class MiniPago < ActiveRecord::Base
  attr_accessible :dni, :fecha_pago, :folio, :id_pago, :monto
end
