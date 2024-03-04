class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.string :zipcode
      t.string :street
      t.string :number
      t.string :complement
      t.string :district
      t.string :city
      t.string :state
      t.string :ibge_code
      t.references :municipe, foreign_key: true

      t.timestamps
    end
  end
end
