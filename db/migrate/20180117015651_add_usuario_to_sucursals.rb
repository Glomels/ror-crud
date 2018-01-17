class AddUsuarioToSucursals < ActiveRecord::Migration[5.1]
  def change
    add_column :sucursals, :usuario_id, :int
  end
end
