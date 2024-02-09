class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :status
      t.timestamps
    end
  end
end
