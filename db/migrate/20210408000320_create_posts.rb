class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      #Development
      #t.references :user, null: false, foreign_key: true
      #Deployment
      t.references :user, index: true

      t.timestamps
    end

    #For Deployment
    add_foreign_key :posts, :users, column: :author_id

  end
end
