require_relative 'config/application'
require_relative 'app/models/task'
require_relative 'app/controllers/task_controllers'
# require 'byebug'

class Todo
	def self.start(action)
	input = action[0]
	input_desc = action[1..-1].join(" ")
	case input
		when 'list' then TaskControllers.list
		when 'add' then TaskControllers.add(input_desc)
		when 'delete' then TaskControllers.delete(input_desc.to_i)
		when 'complete' then TaskControllers.complete(input_desc.to_i)
		end
	end
end


# byebug


# puts "Put your application code in #{File.expand_path(__FILE__)}"

Todo.start(ARGV)

# ruby todo.rb arg0 arg1 ---------