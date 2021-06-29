class CreateArticle1s < ActiveRecord::Migration[6.1]
  def change
    create_table :article1s do |t|
      t.string :title1
      t.text :body1

      t.timestamps
    end
  end
end
