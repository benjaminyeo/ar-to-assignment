require_relative '../../config/application'

class CreateTask < ActiveRecord::Migration
	def change
		create_table :tasks do |t|
			t.string :task
			t.string :done

			t.timestamps null: false
		end
	end
end