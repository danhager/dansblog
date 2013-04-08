class AddEditorCloumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :editor, :string
  end
end
