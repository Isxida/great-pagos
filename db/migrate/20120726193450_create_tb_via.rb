class CreateTbVia < ActiveRecord::Migration
  def change
    create_table :tb_via do |t|
      t.integer :id_via
      t.string :descripcion
      t.date :fec_registro
      t.integer :id_estado

      t.timestamps
    end
  end
end
