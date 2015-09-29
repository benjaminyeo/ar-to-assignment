#all query methods are here
require_relative "../models/task"
# require_relative "../../todo"
require 'byebug'

class TaskControllers
#add method takes in an argument
	def self.list
		puts "Here is your to do list: "
		tasks = Task.all

		tasks.each_with_index do |task, index|
        if task.done == "1"
          done = '[X]'
        else
          done = '[ ]'
        end
      puts "#{index+1}. " + "#{done} #{task.task}"
      end
  	end

	def self.add(new_task)
		Task.create(task: new_task)
		puts "'#{new_task}' has been added to your list."
	end


	def self.delete(task_id)
		task = Task.all[task_id - 1]
		task.delete
		puts "Your task '#{task.task}' has been deleted"
	end

	def self.complete(task_id)
		task = Task.all[task_id-1]
		task.done = '1'
		task.save
		puts "Your task '#{task.task}' has been completed, great job!"
	end

end

