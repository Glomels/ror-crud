class CreateEmpleados < ActiveRecord::Migration[5.1]
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :apellido
      t.string :rfc
      t.string :puesto
      t.integer :usuario_id
      t.integer :sucursal_id

      t.timestamps
    end
  end
end
