class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.text :direccion
      t.string :nro_direccion
      t.references :tb_via

      t.timestamps
    end
    add_index :direccions, :tb_via_id
  end
end
