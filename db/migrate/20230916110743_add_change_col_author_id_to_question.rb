class AddChangeColAuthorIdToQuestion < ActiveRecord::Migration[6.1]
  change_table :questions do |table|
    table.change :author_id, :integer
  end
end
