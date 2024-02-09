class AddTagRefToJobs < ActiveRecord::Migration[7.1]
  def change
    add_reference :jobs, :tag, null: false, foreign_key: true
  end
end
