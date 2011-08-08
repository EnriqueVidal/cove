class CreateIssuers < ActiveRecord::Migration
  def self.up
    create_table :issuers do |t|
      t.string :code,                :limit => 10
      t.string :irs,                 :limit => 50
      t.string :rfc,                 :limit => 13
      t.string :curp,                :limit => 18
      t.string :surname,             :limit => 30
      t.string :mothers_maiden_name, :limit => 30
      t.string :name,                :limit => 80
      t.string :street,              :limit => 100
      t.integer :ext_number
      t.integer :int_number
      t.string :colonia,             :limit => 50
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
    drop_table :issuers
  end
end
