class CreateAlievents < ActiveRecord::Migration[6.0]
  def change
    create_table :alievents do |t|
      t.string :name
      t.string :email
      t.string :number
      t.string :company
      t.string :branch
      t.string :suggestions

      t.timestamps
    end
  end
end
