class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.integer :queue_position

      t.timestamps
    end
  end
end
