class AddAuthorIdToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :author_id, :string
  end
end
