class AddSummaryUserIdToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :summary, :text
    add_column :posts, :user_id, :integer
    add_column :posts, :views, :integer
  end
end
