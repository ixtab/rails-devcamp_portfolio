class AddTopicReferenceToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_reference :blogs, :topic, foreign_key: true, default: '0'
  end
end
