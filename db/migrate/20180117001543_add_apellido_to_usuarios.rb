class AddApellidoToUsuarios < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :apellido, :string
  end
end
