class CreateActionItems < ActiveRecord::Migration
  def change
    create_table :action_items do |t|

      t.timestamps
      t.datetime :origination
      t.datetime :due
      t.string :originator
      t.string :assignee
      t.string :team_lead
      t.string :ci
      t.string :state
      t.integer :priority
      t.text :closure_criteria
      t.text :description
    end
  end
end