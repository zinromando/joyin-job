class AddAttachmentToIntroLetter < ActiveRecord::Migration[5.0]
  def change
    add_column :intro_letters, :attachment, :string
  end
end
