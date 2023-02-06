class CreateDocus < ActiveRecord::Migration[7.0]
  def change
    create_table :docus do |t|
      t.string :name

      t.timestamps
    end
  end
end
