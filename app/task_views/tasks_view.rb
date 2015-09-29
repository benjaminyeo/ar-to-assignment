class TaskViews

	def self.display()

	end

	def self.display_list
		
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