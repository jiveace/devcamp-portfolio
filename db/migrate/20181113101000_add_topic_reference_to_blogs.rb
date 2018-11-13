class AddTopicReferenceToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :topic, :reference
  end
end
