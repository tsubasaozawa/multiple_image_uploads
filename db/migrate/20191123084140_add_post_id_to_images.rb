class AddPostIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :post, index: true
  end
end
