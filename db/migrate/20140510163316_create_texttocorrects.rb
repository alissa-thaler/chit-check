class CreateTexttocorrects < ActiveRecord::Migration
  def change
    create_table :texttocorrects do |t|
      t.string :language
      t.string :duedate
      t.string :description

      t.timestamps
    end
  end
end
