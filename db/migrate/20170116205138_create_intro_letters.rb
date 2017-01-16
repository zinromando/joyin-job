class CreateIntroLetters < ActiveRecord::Migration[5.0]
  def change
    create_table :intro_letters do |t|
      t.integer :activity_id
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
