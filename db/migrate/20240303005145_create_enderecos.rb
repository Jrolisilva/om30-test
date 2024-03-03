class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.string :zipcode, null: false
      t.string :street, null: false
      t.string :complement, null: false
      t.string :district, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :ibge_code
      t.references :municipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
