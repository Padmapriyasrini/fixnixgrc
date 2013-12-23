class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.string :Policy_name
      t.string :Policy_scope
      t.string :Policy_objective
      t.string :Policy_reference

      t.timestamps
    end
  end
end
