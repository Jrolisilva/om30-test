class CreateMunicipes < ActiveRecord::Migration[7.0]
  def change
    create_table :municipes do |t|

      t.timestamps
    end
  end
end
