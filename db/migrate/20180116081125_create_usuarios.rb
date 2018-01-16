class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.string :rfc
      t.string :empresa
      t.string :password

      t.timestamps
    end
  end
end
