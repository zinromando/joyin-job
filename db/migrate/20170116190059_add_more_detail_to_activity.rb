class AddMoreDetailToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :field, :string
    add_column :activities, :fee, :string
    add_column :activities, :location, :string
    add_column :activities, :contact_email, :string
  end
end
