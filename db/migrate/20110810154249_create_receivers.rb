class CreateReceivers < ActiveRecord::Migration
  def self.up
    create_table :receivers do |t|
      t.string :code,                :limit => 10,  :null => false
      t.string :irs,                 :limit => 50
      t.string :rfc,                 :limit => 13,  :null => false
      t.string :curp,                :limit => 18
      t.string :surname,             :limit => 30
      t.string :mothers_maiden_name, :limit => 30
      t.string :name,                :limit => 80,  :null => false
      t.string :street,              :limit => 100
      t.integer :ext_number
      t.string :int_number
      t.string :suburb,              :limit => 50
      t.string :location,            :limit => 50
      t.string :reference,           :limit => 250
      t.string :city,                :limit => 50
      t.string :state,               :limit => 3
      t.string :country,             :limit => 13
      t.integer :postal_code       

      t.timestamps
    end
  end

  def self.down
    drop_table :receivers
  end
end
