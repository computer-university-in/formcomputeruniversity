class CreateWdtmzs < ActiveRecord::Migration[6.0]
  def change
    create_table :wdtmzs do |t|
      t.string :title
      t.string :name
      t.string :email
      t.string :number
      t.string :profession
      t.string :college
      t.string :branch
      t.string :suggestions

      t.timestamps
    end
  end
end
