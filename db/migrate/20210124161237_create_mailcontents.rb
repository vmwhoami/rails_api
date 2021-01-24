class CreateMailcontents < ActiveRecord::Migration[6.0]
  def change
    create_table :mailcontents do |t|
      t.string :name
      t.string :email
      t.number :phone
      t.text :content

      t.timestamps
    end
  end
end
