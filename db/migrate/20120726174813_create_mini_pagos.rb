class CreateMiniPagos < ActiveRecord::Migration
  def change
    create_table :mini_pagos do |t|
      t.integer :id_pago
      t.text :dni
      t.text :folio
      t.float :monto
      t.date :fecha_pago

      t.timestamps
    end
  end
end
